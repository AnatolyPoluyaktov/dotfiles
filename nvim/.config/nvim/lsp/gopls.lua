local blink = require("blink.cmp")
return {
    cmd = { 'gopls' },
    filetypes = { 'go', 'gomod', 'gowork', 'gotmpl', 'gosum' },
    root_markers = { 'go.mod', 'go.work', '.git' },
    settings = {
        gopls = {
            gofumpt = true,
            codelenses = {
                gc_details = false,
                generate = true,
                regenerate_cgo = true,
                run_govulncheck = true,
                test = true,
                tidy = true,
                upgrade_dependency = true,
                vendor = true,
            },
            hints = {
                assignVariableTypes = false,
                compositeLiteralFields = false,
                compositeLiteralTypes = false,
                constantValues = false,
                functionTypeParameters = false,
                parameterNames = false,
                rangeVariableTypes = false,
            },
            analyses = {
                -- NOTE: To temporarily enable disabled analyzers for specific debugging:
                -- :lua vim.lsp.stop_client(vim.lsp.get_clients({name = "gopls"}))
                -- Then edit this file and save, LSP will restart with new settings

                -- Essential analyzers for catching common issues
                nilness = true,      -- Check for nil pointer dereferences
                unusedparams = true, -- Find unused function parameters
                unusedwrite = true,  -- Find unused writes to variables
                useany = true,       -- Suggest using 'any' instead of 'interface{}'
                unreachable = true,  -- Find unreachable code
                unusedresult = true, -- Check for unused results of calls to certain functions

                -- Helpful but not critical (enable as needed)
                simplifyslice = true,        -- Simplify slice expressions
                simplifyrange = true,        -- Simplify range loops
                simplifycompositelit = true, -- Simplify composite literals

                -- Performance-intensive analyzers (disabled for better performance)
                shadow = false,    -- Check for shadowed variables (can be slow)
                printf = false,    -- Check printf-style functions (can be slow)
                structtag = false, -- Check struct tags (can be slow)
                -- fieldalignment = false,  -- Check struct field alignment (very slow)
                -- unusedvariable = false,  -- Can be slow on large codebases

                -- Less commonly needed analyzers (disabled)
                modernize = false,
                stylecheck = false,
                appends = false,
                asmdecl = false,
                assign = false,
                atomic = false,
                atomicalign = false,
                bools = false,
                buildtag = false,
                cgocall = false,
                composite = false,
                composites = false,
                contextcheck = false,
                copylocks = false,
                deba = false,
                deepequalerrors = false,
                defers = false,
                deprecated = false,
                directive = false,
                embed = false,
                errorsas = false,
                fillreturns = false,
                framepointer = false,
                gofix = false,
                hostport = false,
                httpresponse = false,
                ifaceassert = false,
                infertypeargs = false,
                loopclosure = false,
                lostcancel = false,
                nilfunc = false,
                nonewvars = false,
                noresultvalues = false,
                shift = false,
                sigchanyzer = false,
                slog = false,
                sortslice = false,
                stdmethods = false,
                stdversion = false,
                stringintconv = false,
                testinggoroutine = false,
                tests = false,
                timeformat = false,
                unmarshal = false,
                unsafeptr = false,
                unusedfunc = false,
                unusedvariable = false,
                waitgroup = false,
                yield = false,
            },
            usePlaceholders = true,
            completeUnimported = true,
            staticcheck = true,
            directoryFilters = { "-.git", "-.vscode", "-.idea", "-.vscode-test", "-node_modules" },
            semanticTokens = false,
        },
    },
    -- capabilities = vim.tbl_deep_extend(
    --     "force",
    --     {},
    --     vim.lsp.protocol.make_client_capabilities(),
    --     blink.get_lsp_capabilities(),
    --     {
    --         fileOperations = {
    --             didRename = true,
    --             willRename = true,
    --         },
    --     }
    -- ),
    on_attach = function(client, bufnr)
        -- Автоматическая вставка импортов при использовании автодополнения
        local function organize_imports()
            local params = vim.lsp.util.make_range_params()
            params.context = { only = { "source.organizeImports" } }
            
            local result = vim.lsp.buf_request_sync(bufnr, "textDocument/codeAction", params, 3000)
            for _, res in pairs(result or {}) do
                for _, r in pairs(res.result or {}) do
                    if r.edit then
                        vim.lsp.util.apply_workspace_edit(r.edit, "UTF-8")
                    end
                end
            end
        end
        
        -- Организация импортов при сохранении
        vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            callback = organize_imports,
        })
    end,
}

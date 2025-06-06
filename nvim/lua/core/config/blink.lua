local M = {
    'saghen/blink.cmp',
    -- optional: provides snippets for the snippet source
    dependencies = 'rafamadriz/friendly-snippets',

    -- use a release tag to download pre-built binaries
    version = '*',
    -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
    -- build = 'cargo build --release',
    -- If you use nix, you can build from source using latest nightly rust with:
    -- build = 'nix run .#build-plugin',

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
        -- 'default' for mappings similar to built-in completion
        -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
        -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
        -- See the full "keymap" documentation for information on defining your own keymap.
        keymap = {
            -- set to 'none' to disable the 'default' preset
            preset = 'default',

            ['<C-k>'] = { 'select_prev', 'fallback' },
            ['<C-j>'] = { 'select_next', 'fallback' },
            ['<S-Tab>'] = { 'select_prev', 'fallback' },
            ['<Tab>'] = { 'select_next', 'fallback' },

            -- disable a keymap from the preset
            ['<C-e>'] = {},

            -- show with a list of providers
            ['<C-space>'] = { function(cmp) cmp.show({ providers = { 'snippets' } }) end },
            ['<CR>'] = { 'accept', 'fallback' },

            cmdline = {
                preset = 'default',
                ['<CR>'] = {
                    function(cmp)
                        if cmp.snippet_active() then return cmp.accept()
                        else return end
                    end,
                    'snippet_forward',
                    'fallback'
                },
            }
        },

        appearance = {
            use_nvim_cmp_as_default = true,
            nerd_font_variant = 'mono'
        },

        -- Default list of enabled providers defined so that you can extend it
        -- elsewhere in your config, without redefining it, due to `opts_extend`
        -- Disable for some filetypes
        enabled = function()
            -- return not vim.tbl_contains({ "lua", "markdown" }, vim.bo.filetype)
            return vim.bo.buftype ~= "prompt"
            and vim.b.completion ~= false
        end,

        sources = {
            -- Remove 'buffer' if you don't want text completions, by default it's only enabled when LSP returns no items
            default = { 'lsp', 'path', 'snippets', 'buffer' },
            -- Disable cmdline completions
            cmdline = {},
        },
        snippets = { preset = 'default'},
        completion = {
            -- 'prefix' will fuzzy match on the text before the cursor
            -- 'full' will fuzzy match on the text before *and* after the cursor
            -- example: 'foo_|_bar' will match 'foo_' for 'prefix' and 'foo__bar' for 'full'
            keyword = { range = 'full' },

            -- Disable auto brackets
            -- NOTE: some LSPs may add auto brackets themselves anyway
            accept = { auto_brackets = { enabled = false }, },

            -- list = { selection = { preselect = false, auto_insert = true } },
            list = { selection = { preselect = function(ctx) return ctx.mode ~= 'cmdline' end } },

            menu = {
                -- Don't automatically show the completion menu
                auto_show = true,

                -- nvim-cmp style menu
                draw = {
                    columns = {
                        { "label", "label_description", gap = 1 },
                        { "kind_icon", "kind" }
                    },
                }
            },

            documentation = { auto_show = true, auto_show_delay_ms = 500 },
            ghost_text = { enabled = false },
        },
        signature = { enabled = true }
    },
    opts_extend = { "sources.default" }
}

return M

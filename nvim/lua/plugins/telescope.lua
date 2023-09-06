return {
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { { 'nvim-lua/plenary.nvim' } },
        config = function()
            local builtin = require('telescope.builtin')
            local actions = require "telescope.actions"
            local action_state = require('telescope.actions.state')

            local telescope_custom_actions = {}

            function telescope_custom_actions._multiopen(prompt_bufnr, open_cmd)
                local picker = action_state.get_current_picker(prompt_bufnr)
                local num_selections = #picker:get_multi_selection()
                if not num_selections or num_selections <= 1 then
                    actions.add_selection(prompt_bufnr)
                end
                actions.send_selected_to_qflist(prompt_bufnr)
                vim.cmd('cfdo ' .. open_cmd)
            end

            function telescope_custom_actions.multi_selection_open(prompt_bufnr)
                telescope_custom_actions._multiopen(prompt_bufnr, 'edit')
            end

            require("telescope").setup {
                defaults = {
                    selection_strategy = 'reset',
                    sorting_strategy = 'ascending',
                    layout_strategy = 'horizontal',
                    layout_config = {
                        horizontal = {
                            prompt_position = 'top',
                            preview_width = 0.6,
                            results_width = 0.8,
                        },
                        vertical = {
                            mirror = false,
                        },
                        width = 0.85,
                        height = 0.85,
                        preview_cutoff = 120,
                    },

                    mappings = {
                        i = {
                            ["<Esc>"] = actions.close,
                            ["<C-n>"] = actions.cycle_history_next,
                            ["<C-p>"] = actions.cycle_history_prev,

                            ["<C-j>"] = actions.move_selection_next,
                            ["<C-k>"] = actions.move_selection_previous,

                            ["<C-c>"] = actions.close,

                            ["<Down>"] = actions.move_selection_next,
                            ["<Up>"] = actions.move_selection_previous,

                            -- ["<CR>"] = actions.select_default,
                            ["<CR>"] = telescope_custom_actions.multi_selection_open,
                            ["<C-x>"] = actions.select_horizontal,
                            ["<C-v>"] = actions.select_vertical,
                            ["<C-t>"] = actions.select_tab,

                            ["<C-u>"] = actions.preview_scrolling_up,
                            ["<C-d>"] = actions.preview_scrolling_down,

                            ["<PageUp>"] = actions.results_scrolling_up,
                            ["<PageDown>"] = actions.results_scrolling_down,

                            ["<Tab>"] = actions.move_selection_worse,
                            ["<S-Tab>"] = actions.move_selection_better,
                            ["<Space>"] = actions.toggle_selection,

                            ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
                            ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                            ["<C-l>"] = actions.complete_tag,
                            ["<C-_>"] = actions.which_key, -- keys from pressing <C-/>
                        },

                    }
                },
            }
            vim.keymap.set('n', '<Leader>ff', builtin.find_files, {})
            vim.keymap.set('n', '<Leader>fg', builtin.live_grep, {})
            vim.keymap.set('n', '<Leader>fb', builtin.buffers, {})
            vim.keymap.set('n', '<Leader>fh', builtin.help_tags, {})
        end,
    },
}

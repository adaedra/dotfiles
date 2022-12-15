local theme = {}

function theme.apply()
    vim.g.gruvbox_italicize_strings = 0
    vim.g.gruvbox_transp_bg = 1

    vim.cmd.colorscheme 'gruvbox8_hard'
end

return theme

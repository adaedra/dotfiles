local config = {}

function config.apply(o)
    -- Appearance
    vim.opt.termguicolors = true
    vim.opt.background = o.background
    vim.opt.cursorline = true
    vim.opt.scrolloff = 5

    -- Indentation
    vim.opt.shiftwidth = 4
    vim.opt.softtabstop = -1
    vim.opt.expandtab = true

    require('adaedra.theme').apply()
end

return config

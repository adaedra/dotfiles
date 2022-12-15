local keymap = {}

function keymap.apply()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', ',,', builtin.find_files, {})
    vim.keymap.set('n', ',b', builtin.buffers, {})
    vim.keymap.set('n', ',g', builtin.git_status, {})
end

return keymap

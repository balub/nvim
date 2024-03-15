local keymap = vim.keymap
    --

local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    -- desc = user-defined description of what the keymap does
    -- noremap = if true do not remap the keymap to anywhere else
    -- silent = do not show anything in the info window below when keymap is used
end

-- Directory Navigation
keymap.set('n','<leader>pf',':NvimTreeToggle<Cr>',opts('View project files'))

-- Pane Navigation
keymap.set('n','<C-h>','<C-w>h',opts('Navigate to right pane'))
keymap.set('n','<C-j>','<C-w>j',opts('Navigate to top pane'))
keymap.set('n','<C-k>','<C-w>k',opts('Navigate to bottom pane'))
keymap.set('n','<C-l>','<C-w>l',opts('Navigate to left pane'))

-- Window Management
keymap.set('n','<leader>sv',':vsplit<Cr>',opts('Split window vertically'))
keymap.set('n','<leader>sh',':split<Cr>',opts('Split window horizontally'))

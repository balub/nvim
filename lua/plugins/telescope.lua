
return {
    'nvim-telescope/telescope.nvim',
     tag = '0.1.6',
     lazy = false,
     dependencies = { 'nvim-lua/plenary.nvim' },
     -- Custom keymaps for Telescope
     -- Doing it this way because, we want these keymaps to be available when telescope is loaded. Since Telescope
     -- is lazy loaded putting it here so that only when telescope is loaded we get the keymaps. By putting it in 
     -- the keymaps.lua file it will be available globally.
    }

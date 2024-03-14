return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup({
      config = {
        header={           
         [[ ]],
[[██████╗ ██╗     ██╗   ██╗███████╗    ██╗   ██╗██╗  ████████╗██████╗  █████╗ ]],
[[██╔══██╗██║     ██║   ██║██╔════╝    ██║   ██║██║  ╚══██╔══╝██╔══██╗██╔══██╗]],
[[██████╔╝██║     ██║   ██║███████╗    ██║   ██║██║     ██║   ██████╔╝███████║]],
[[██╔═══╝ ██║     ██║   ██║╚════██║    ██║   ██║██║     ██║   ██╔══██╗██╔══██║]],
[[██║     ███████╗╚██████╔╝███████║    ╚██████╔╝███████╗██║   ██║  ██║██║  ██║]],
[[╚═╝     ╚══════╝ ╚═════╝ ╚══════╝     ╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝]],
                                                                           [[ ]],
[[]],
        },
           shortcut = { -- The shortcut property refers to the stuff thats below the header
        { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' }, -- group here refers to a highlight group
        {
          icon = ' ',
          icon_hl = '@variable',
          desc = 'Files',
          group = 'Label',
          action = 'Telescope find_files',
          key = 'f',
        },
        {
          desc = ' Apps',
          group = 'DiagnosticHint',
          action = 'Telescope app',
          key = 'a',
        },
        {
          desc = ' dotfiles',
          group = 'Number',
          action = 'Telescope dotfiles',
          key = 'd',
        },
      }, 
      }
    })
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}

-- Example file with lots of options.
-- You can test with with this command:
-- cd ./etc && ../src/termit --init ../doc/rc.lua.example

-- require("termit.colormaps") -- use my 
require("termit.utils")

clr = {}
clr.black   = '#282828'
clr.light   = '#fbf1c7'
clr.red     = '#cc241d'
clr.green   = '#b8bb26' -- '#98971a'
clr.bgreen  = '#87bb26'
clr.byellow = '#fce94f'
clr.yellow  = '#d79921'
clr.blue    = '#458588'
clr.bblue   = '#75e2e2'
clr.purple  = '#b16286'
clr.aqua    = '#689d6a'
clr.orange  = '#d65d0e'
clr.fish    = '#83a598'

gruvbox = {
  clr.black,  -- background
  clr.red,    -- diff error, state delete, untracked
  clr.bgreen,  -- diff add, correct command, 777 dir bg
  clr.yellow, -- pwd path
  clr.black,  -- 777 dir foreground
  '#000000',  -- ?
  '#FFFFFF',  --
  clr.light,  -- file, cmd param, default, foreground
  '#000000',  -- ?
  clr.purple, -- error input, git dirty
  clr.blue,   -- time, brackets, link target, executable file
  clr.byellow,  -- host, user, arrow
  
  clr.green,   -- ? directory, branch
  '#000000',
  clr.orange,  -- cmd count, symlink
  '#000000'   -- ?
}

defaults = {}
defaults.windowTitle = 'Termit'
defaults.startMaximized = false
defaults.hideTitlebarWhenMaximized = true
defaults.tabName = 'Terminal'
defaults.encoding = 'UTF-8'
defaults.wordCharExceptions = '- .,_/'
defaults.font = 'mononoki 12'
--defaults.foregroundColor = 'gray'
--defaults.backgroundColor = 'black'
defaults.showScrollbar = true
defaults.hideSingleTab = true
defaults.hideTabbar = false
defaults.showBorder = false
defaults.hideMenubar = true
defaults.fillTabbar = true
defaults.scrollbackLines = 4096
defaults.geometry = '10x10'
defaults.allowChangingTitle = true
--defaults.backspaceBinding = 'AsciiBksp'
--defaults.deleteBinding = 'AsciiDel'
defaults.cursorBlinkMode = 'BlinkOff'
defaults.cursorShape = 'Underline'
defaults.tabPos = 'Right'
defaults.setStatusbar = function (tabInd)
    tab = tabs[tabInd]
    if tab then
        return tab.encoding..'  Bksp: '..tab.backspaceBinding..'  Del: '..tab.deleteBinding
    end
    return ''
end
defaults.colormap = gruvbox
defaults.matches = {['http[^ ]+'] = function (url) print('Matching url: '..url) end}
-- default opened tabs. For what?
-- defaults.tabs = {{workingDir = '/home/intey/project/niso-e'}; title = workingDir;  }
setOptions(defaults)
bindKey('Ctrl-w', nil)
setKbPolicy('keycode')

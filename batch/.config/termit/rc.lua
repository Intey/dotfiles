-- Example file with lots of options.
-- You can test with with this command:
-- cd ./etc && ../src/termit --init ../doc/rc.lua.example

-- require("termit.colormaps") -- use my 
require("termit.utils")
require("termit.gruvbox")

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
defaults.colormap = gruvbox2
defaults.matches = {['http[^ ]+'] = function (url) print('Matching url: '..url) end}
-- default opened tabs. For what?
-- defaults.tabs = {{workingDir = '/home/intey/project/niso-e'}; title = workingDir;  }
setOptions(defaults)
bindKey('Ctrl-w', nil)
setKbPolicy('keycode')

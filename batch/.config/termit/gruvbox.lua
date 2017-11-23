
_clr = {}
_clr.black   = '#282828'
_clr.light   = '#fbf1c7'
_clr.red     = '#cc241d'
_clr.green   = '#b8bb26' -- '#98971a'
_clr.bgreen  = '#87bb26'
_clr.byellow = '#fce94f'
_clr.yellow  = '#d79921'
_clr.blue    = '#458588'
_clr.bblue   = '#75e2e2'
_clr.purple  = '#b16286'
_clr.aqua    = '#689d6a'
_clr.orange  = '#d65d0e'
_clr.fish    = '#83a598'

gruvbox = {
  _clr.black,   -- background
  _clr.red,     -- diff error, state delete, untracked
  _clr.bgreen,  -- diff add, correct command, 777 dir bg
  _clr.yellow,  -- pwd path
  _clr.ligth,   -- 777 dir foreground, bash astericks expansion(zsh)
  '#000000',    -- ?
  '#FFFFFF',    --
  _clr.light,   -- file, cmd param, default, foreground
  '#000000',    -- ?
  _clr.purple,  -- error input, git dirty
  _clr.blue,    -- time, brackets, link target, executable file
  _clr.byellow, -- host, user, arrow

  _clr.green,   -- ? directory, branch
  '#000000',
  _clr.orange,  -- cmd count, symlink
  '#000000'     -- ?
}

-- WTF, termit break theme, after some time. What a hell?
-- Ok. Can fix, with reset color scheme
gruvbox2 = {
  _clr.black,   -- background
  _clr.red,     -- diff error, state delete, untracked
  _clr.bgreen,  -- diff add, correct command, 777 dir bg
  _clr.yellow,  -- pwd path
  _clr.ligth,   -- 777 dir foreground, bash astericks expansion(zsh)
  _clr.blue,    --
  _clr.purple,
  _clr.light,   -- file, cmd param, default, foreground
  _clr.light,   -- file, cmd param, default, foreground
  _clr.purple,  -- error input, git dirty
  _clr.red,    -- time, brackets, link target, executable file, npm error, git dirty
  _clr.byellow, -- host, user, arrow
  _clr.green,   -- ? directory, branch
  _clr.green,   -- ? directory, branch
  _clr.orange,  -- cmd count, symlink
  _clr.orange,   -- cmd count, symlink
}

-- need for reseting escape sequences bugs in termit, after which colors
-- intersects
reset = {
  _clr.black,
  _clr.black,
  _clr.black,
  _clr.black,
  _clr.black,
  _clr.black,
  _clr.black,
  _clr.black,
  _clr.black,
  _clr.black,
  _clr.black,
  _clr.black,
  _clr.black,
  _clr.black,
  _clr.black,
  _clr.black,
}

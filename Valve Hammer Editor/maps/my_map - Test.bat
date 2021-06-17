@echo off

// mapname = name MAP-file
set mapname=my_map

// mod folder name and path to the folder Half-Life for automatic copy your compiled map
set modname=cstrike
set hlpath=C:\Games\Half-Life

hlcsg "%mapname%" -nowadtextures
hlbsp "%mapname%"
hlvis "%mapname%" -fast
hlrad "%mapname%" -chop 128

del %mapname%.b0
del %mapname%.b1
del %mapname%.b2
del %mapname%.b3
del %mapname%.hsz
del %mapname%.p0
del %mapname%.p1
del %mapname%.p2
del %mapname%.p3
del %mapname%.pln
del %mapname%.prt
del %mapname%.wa_

del %mapname%.log

// automatic copy compiled map
copy %mapname%.bsp %hlpath%\%modname%\maps\%mapname%.bsp
del %mapname%.bsp

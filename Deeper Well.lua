-- Authors
--   Crystal level design/Tile placement : xumingkuan
--   Based on: The Ice Palace - A Day Out - Well (Crystal level design/Tile placement : choongmyoung; Created with RecursedEditor)
  

local tile_mapping = {["."]="empty", ["0"]="door_uull", ["1"]="door_uu", ["2"]="door_uurr", ["3"]="buoy_1", ["4"]="buoy_2", ["5"]="buoy_3", ["6"]="buoy_4", ["7"]="ceiling_r1", ["8"]="ceiling_r2", ["9"]="ceiling_r1_w", ["a"]="ceiling_r2_w", ["b"]="bough", ["c"]="bough_h", ["d"]="ropeknot", ["e"]="light_off", ["f"]="light_on", ["g"]="brick_l", ["h"]="brick", ["i"]="brick_r", ["j"]="dirt_s", ["k"]="door_ull", ["l"]="door_u", ["m"]="door_urr", ["n"]="buoy_5", ["o"]="rail", ["p"]="emptyblock", ["q"]="block", ["r"]="ceiling_r3", ["s"]="ceiling_r4", ["t"]="ceiling_rr_1", ["u"]="ceiling_rr_2", ["v"]="bough_v", ["w"]="ledge", ["x"]="rope", ["y"]="dummy35", ["z"]="dummy36", ["A"]="dummy37", ["B"]="dummy38", ["C"]="dummy39", ["D"]="dirt", ["E"]="door_dll", ["F"]="door_d", ["G"]="door_drr", ["H"]="buoy_6", ["I"]="block_1", ["J"]="block_2", ["K"]="block_3", ["L"]="ceiling_r5", ["M"]="ceiling_r6", ["N"]="ceiling_rr_3", ["O"]="ceiling_rr_4", ["P"]="wall_1", ["Q"]="water_s", ["R"]="water_s_rope", ["S"]="dummy55", ["T"]="dummy56", ["U"]="dummy57", ["V"]="dummy58", ["W"]="dummy59", ["X"]="dirt_deco", ["Y"]="door_ddll", ["Z"]="door_dd", ["@"]="door_ddrr", ["#"]="buoy_7", ["$"]="buoy_8", ["%"]="buoy_9", ["="]="drawer_1", ["?"]="drawer_2", ["!"]="drawer_3", ["^"]="drawer_4", ["&"]="drawer_5", ["/"]="wall_2", [":"]="water", [";"]="pillar"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
78..................
rs78................
LMrs78..............
^&LMrstu............
q...LMNO............
2....;..............
m............bccdccb
G............v..x..v
@............v..x..v
IJKIJKq......g..x..i
hhhhhhi......gQQRQQi
hhhhhhijjjjjjg::;::i
DDDDDDDDDDDDDg:::::i
DDDDDDDDDDDDDg:::::i
XXXXXXXXXXXXXghhhhhi
]])
  Spawn("player", 10.25, 10)
  Spawn("chest", 8.25, 10.5, "roomA")
  Spawn("lock", 5.5, 7.5)
  Spawn("crystal", 3, 5.5)
end

function roomA(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
e......LMrs9a:::::::
q........LMrs9a:::::
2...e......LMrs9a:::
m...P........LMrs9a:
G..w/...f......LMrs9
m...=?!^&........LMr
G...P...P...e......L
@.../.../...q......0
=?!^&...=?!^&...e..k
3456P.......e...q..E
n.../.......=?!^&..k
H........e........eE
#$%......P........PY
:::q...../oooooooo/q
:::IJKIJKIJKIJKIJKIJ
]])
    Spawn("player", 2, 11)
  else
    ApplyTiles(tile_mapping, 0, 0, [[
e......LMrs78.......
q........LMrs78.....
2...e......LMrs78...
m...P........LMrs78.
G..w/...f......LMrs7
m...=?!^&........LMr
G...P...P...e......L
@.../.../...q......0
=?!^&...=?!^&...e..k
....P.......e...q..E
..../.......=?!^&..k
3456.....e........eE
n........P........PY
H..q...../oooooooo/q
#$%IJKIJKIJKIJKIJKIJ
]])
    Spawn("player", 2, 13)
  end
  Global("box", 14.5, 8.5)
  Global("box", 10.5, 6.5)
  Spawn("key", 2.5, 7.5)
  Spawn("yield", 4.75, 13)
  Spawn("yield", 6, 13)
end

tiles = "../TheIcePalace/tiles/hanok"
pattern = "../TheIcePalace/backgrounds/korean"
dark = { 0.07, 0.07, 0.20 }
light = { 0.16, 0.16, 0.33 }

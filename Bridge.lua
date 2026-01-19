-- Authors
--   Crystal level design : xumingkuan
--   Diamond level design : xumingkuan
--   Tile placement       : xumingkuan (following the design of some levels in The Ice Palace)

local tile_mapping = {["."]="empty", ["0"]="buoy_ul", ["1"]="buoy_u", ["2"]="buoy_ur", ["3"]="brick_ul", ["4"]="brick_l", ["5"]="brick_m", ["6"]="brick_r", ["7"]="brick_ur", ["8"]="pillar_ull", ["9"]="pillar_ul", ["a"]="pillar_u", ["b"]="pillar_ur", ["c"]="pillar_urr", ["d"]="ledge", ["e"]="ledge_x", ["f"]="black_l", ["g"]="black", ["h"]="black_hole", ["i"]="black_r", ["j"]="buoy_v_u", ["k"]="buoy_l", ["l"]="buoy_c", ["m"]="buoy_r", ["n"]="brick_ul_w", ["o"]="brick_dl", ["p"]="brick_dm", ["q"]="brick_dr", ["r"]="brick_ur_w", ["s"]="pillar_ull_w", ["t"]="pillar_l", ["u"]="pillar_m", ["v"]="pillar_r", ["w"]="pillar_urr_w", ["x"]="ledge_w", ["y"]="ledge_x_w", ["z"]="water_surface", ["A"]="water", ["B"]="cloud_l", ["C"]="cloud_r", ["D"]="buoy_v_c", ["E"]="buoy_dl", ["F"]="buoy_d", ["G"]="buoy_dr", ["H"]="brick_ul_a", ["I"]="block_circle", ["J"]="block", ["K"]="brick_d", ["L"]="brick_ur_a", ["M"]="pillar_ull_a", ["N"]="line_v", ["O"]="line_h", ["P"]="pillar_bridge", ["Q"]="pillar_urr_a", ["R"]="ledge_a", ["S"]="ledge_x_a", ["T"]="acid_surface", ["U"]="acid", ["V"]="cloud", ["W"]="cloudledge", ["X"]="buoy_v_d", ["Y"]="buoy_h_l", ["Z"]="buoy_h_c", ["@"]="buoy_h_r", ["#"]="buoy_s", ["$"]="stalactite_many", ["%"]="stalactite_big", ["="]="stalactite_small", ["?"]="railing", ["!"]="railing_broken", ["^"]="stalagmite", ["&"]="glitch_tunnel", ["/"]="glitch_check", [":"]="glitch_static1", [";"]="glitch_static2", ["*"]="glitch_static3", ["+"]="glitch_static5", ["~"]="glitch_static4", ["-"]="glitch_ugly"}


function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
JJJJJJJJJJJ......JJJ
JJJJJJJ5556......455
JJJ55555556......455
55555555556......455
.N................N.
.N................N.
.N................N.
55555555556.......N.
.N......%$........N.
.N......=.........N.
.N................N.
55555555555555555555
555555555555555555JJ
55555555555555555JJJ
55555555555555JJJJJJ
]])
  Spawn("lock", 5.5, 9.5)
  Spawn("lock", 5.5, 5.5)
  Spawn("lock", 7, 5.5)
  -- Spawn("lock", 8.5, 5.5)
  Spawn("player", 16, 10)
  Spawn("key", 8.25, 10.5)
  Spawn("record", 10.5, 10.5, "sounds/voices/t6")
  Global("chest", 14, 10.5, "bridge")
  Spawn("chest", 3.5, 10.5, "vault")
  Spawn("crystal", 3.5, 5.5)
end


function bridge(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
JJJJJJJJJJJJJJJJJJJJ
JJJJJ..........JJJJJ
JJ................JJ
....................
....................
....................
....................
....................
zzzz02........02zzzz
AAAAkmzzzzzzzzkmAAAA
AAAAkmxxxAAxxxkmAAAA
AAAAkmAAAAAAAAkmAAAA
AAAAkmAAAAAAAAkmAAAA
5556kmAAAAAAAAkm4555
5556EGAAAAAAAAEG4555
]])
    -- Add the ledge later to enable the water surface effect.
    ApplyTiles(tile_mapping, 0, 7, [[
dddddddddddddddddddd
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
JJJJJJJJJJJJJJJJJJJJ
JJJJJ..........JJJJJ
JJ................JJ
....................
....................
....................
....................
dddddddddddddddddddd
....................
....................
....02ddd..ddd02....
....km........km....
....km........km....
5556kmzzzzzzzzkm4555
5556kmAAAAAAAAkm4555
]])
  end
  Spawn("player", 2, 12)
  Spawn("yield", 18, 12)
  Global("box", 3.25, 12.5)
  Global("box", 16.75, 12.5)
end

function vault(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
pppppppppppppppppppp
.N................N.
.N................N.
.N................N.
.Ndddddddddddd....N.
.N................N.
.Nddddppp.........N.
.N......N.........N.
.N......N.........N.
zNxxxxzzNzzzzzzzzzNz
ANxxxAAAAAAAAAAAAANA
55556AAAAAAAAAAAAANA
55556AAAAAAAAAAAAANA
55555555555555555555
55555555555555555555
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
pppppppppppppppppppp
.N................N.
.N................N.
.N................N.
.Ndddddddddddd....N.
.N................N.
.Nddddppp.........N.
.N......N.........N.
.N......N.........N.
.N......N.........N.
zNxxxzzzzzzzzzzzzzNz
55556AAAAAAAAAAAAANA
55556AAAAAAAAAAAAANA
55555555555555555555
55555555555555555555
]])
    -- Add the ledge later to enable the water surface effect.
    ApplyTiles(tile_mapping, 0, 9, [[
..dddd
]])
  end
  Spawn("lock", 8.5, 11.5)
  Spawn("key", 7.5, 5)
  Spawn("player", 10, 2)
  Spawn("chest", 15, 12.5, "keyRoom")
end

function keyRoom(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
KKKKKKKKKKKKKKKKKKKK
bwAAAAAA0112AAAAAAs9
vAAAAAAAkllmAAAAAAAt
vAAAAAAAkllmAAAAAAAt
vAAAAAAAkllmAAAAAAAt
vAAAAAAAkllmAAAAAAAt
vAAAAAAAkllmAAAAAAAt
vAAAAAAAkllmAAAAAAAt
vAAAAAAAkllmAAAAAAAt
vAAAAAAAkllmAAAAAAAt
vAAAAAAAkllmAAAAAAAt
64564564kllm64564564
64564564kllm64564564
64564564kllm64564564
64564564EFFG64564564
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
KKKKKKKKKKKKKKKKKKKK
bc................89
v..................t
v..................t
v..................t
v..................t
v..................t
v..................t
v.......0112.......t
v.......kllm.......t
v.......kllm.......t
64564564kllm64564564
64564564kllm64564564
64564564kllm64564564
64564564kllm64564564
]])
  end
  Spawn("player", 5.5, 10)
  Spawn("key", 14.5, 10)
end

function reject(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
gggggggggggggggggggg
gg................gg
gg................gg
gg................gg
gg................gg
gg................gg
gggggg............gg
gggifg............gg
ggg..g............gg
gggggg............gg
ggggggggeeegg.....gg
gggifggg...gg.....gg
ggg..ggg...gg.....gg
ggggggggeeegg.....gg
gggggggg...ggggggggg
]])
  Spawn("player", 9.5, 12)
  Spawn("diamond", 4, 2)
  Spawn("chest", 14.5, 13.5, "rejectC")
  Spawn("generic", 16.5, 13.5)
end

function rejectC(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
gggggggggggggggggggg
ggg..............ggg
ggg..............ggg
ggg..............ggg
ggg..............ggg
ggghhhh..........ggg
gggi.............ggg
ggg..............ggg
ggg..............ggg
ggg..............ggg
ggg..............ggg
ggg..............ggg
ggg..............ggg
gggggggggggggggggggg
gggggggggggggggggggg
]])
  Spawn("player", 4.5, 4)
  Spawn("fan", 10, 12.5)
end

tiles = "../TheIcePalace/tiles/glacier_v2"
pattern = "../TheIcePalace/backgrounds/frozen"

dark = { 0, 0.18, 0.36 }
light = { 0.24, 0.35, 0.48 }

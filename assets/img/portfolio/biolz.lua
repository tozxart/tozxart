gameMapChildren = game:GetService("Workspace").GameMap:GetChildren()
for i, child in pairs(gameMapChildren) do
  if (child.Name:find("Dimension") or child.Name:find("Infinite Mode")  or child.Name:find("Virtual Garden") or child.Name:find("Rush") or child.Name:find("Raid")) and not (child.Name:find("Lobby") or child.Name:find("raidLobby")) then


local authed = false
local hooka
local oldReq

local typer = clonefunction(type)

local hook_table = {
	[2377] = {
		[1200] = function(data)
			if authed then
				data.memory[161] = true
				data.memory[143] = {Raw = "ToZx", A3 = 2, B = 2}
				data.memory[144] = {Raw = "ToZx", A3 = 2, B = 2}
			end
		end,
		[1482] = function(data)
			data.memory[179] = true
			data.memory[180] = {}
		end,
		[1517] = function(data)
			data.memory[181] = true
		end,
		[1529] = function(data)
			data.memory[184] = {{
				game_id = 3,
				game_name = "w"
			}}
		end,
		[2149] = function(data)
			data.memory[192]()
		end
	},
	[128] = {
		[52] = function(data)
			return 62
		end,
		[68] = function(data)
			return 78
		end,
	},
	[17] = {
		[5] = function(data)
			if data.code[4].realOp == 22 and data.op == 30 then
				return 6
			end
		end
	},
	[319] = {
		[1] = function(data)
			if not hooka then hooka = true else return end
			oldReq = hookfunction(syn.request,function(t)
				if t.Url:find("API") then
					return {Body = syn.crypt.base64.decode("LS0gZ2V0Z2VudiA9IGdldHNlY3VyZWVudiBvciBnZXRnZW52Ow0KDQpsb2NhbCBmdW5jdGlvbiBBZGRBbGlhcyguLi4pDQogICAgZm9yIF8sIFQgaW4gbmV4dCwgey4uLn0gZG8NCiAgICAgICAgZ2V0ZmVudigpW1RbMV1dID0gVFsyXTsNCiAgICAgICAgIC0tZ2V0Z2VudigpW1RbMV1dID0gVFsyXTsNCiAgICBlbmQ7DQplbmQ7DQoNCmxvY2FsIFNlcnZpY2VzID0gc2V0bWV0YXRhYmxlKHt9LCB7DQogICAgX19pbmRleCA9IGZ1bmN0aW9uKHNlbGYsIFNlcnZpY2UpDQogICAgICAgIHJldHVybiBnYW1lOkdldFNlcnZpY2UoU2VydmljZSk7IC0tIEZ1Y2sgZXJyb3IgaGFuZGxpbmcgdGJoLg0KICAgIGVuZDsNCn0pOw0KDQpsb2NhbCBPbGRTcGF3biA9IHNwYXduOw0KDQpBZGRBbGlhcygNCiAgICB7J1NlcnZpY2VzJywgU2VydmljZXN9LA0KICAgIA0KICAgIHsnUGxheWVycycsIFNlcnZpY2VzLlBsYXllcnN9LA0KICAgIHsnTG9jYWxQbGF5ZXInLCBTZXJ2aWNlcy5QbGF5ZXJzLkxvY2FsUGxheWVyfSwNCiAgICB7J01vdXNlJywgU2VydmljZXMuUGxheWVycy5Mb2NhbFBsYXllcjpHZXRNb3VzZSgpfSwNCg0KICAgIHsnUnVuU2VydmljZScsIFNlcnZpY2VzLlJ1blNlcnZpY2V9LA0KICAgIHsnVUlTJywgU2VydmljZXMuVXNlcklucHV0U2VydmljZX0sDQogICAgeydIdHRwJywgU2VydmljZXMuSHR0cFNlcnZpY2V9LA0KICAgIHsnQ29yZUd1aScsIFNlcnZpY2VzLkNvcmVHdWl9LA0KDQogICAgeydJc0EnLCB3b3Jrc3BhY2UuSXNBfSwNCiAgICB7J1dGQycsIHdvcmtzcGFjZS5XYWl0Rm9yQ2hpbGR9LA0KICAgIHsnRkZDJywgd29ya3NwYWNlLkZpbmRGaXJzdENoaWxkfSwNCiAgICB7J0dGTicsIHdvcmtzcGFjZS5HZXRGdWxsTmFtZX0sDQogICAgeydJRE8nLCB3b3Jrc3BhY2UuSXNEZXNjZW5kYW50T2Z9LA0KDQogICAgeydIZWFydGJlYXQnLCBTZXJ2aWNlcy5SdW5TZXJ2aWNlLkhlYXJ0YmVhdH0sDQogICAgeydSZW5kZXJTdGVwcGVkJywgU2VydmljZXMuUnVuU2VydmljZS5SZW5kZXJTdGVwcGVkfSwNCg0KICAgIHsnQ2FtZXJhJywgd29ya3NwYWNlLkN1cnJlbnRDYW1lcmF9LA0KICAgIHsnV1RTUCcsIHdvcmtzcGFjZS5DdXJyZW50Q2FtZXJhLldvcmxkVG9TY3JlZW5Qb2ludH0sDQogICAgeydXVFZQJywgd29ya3NwYWNlLkN1cnJlbnRDYW1lcmEuV29ybGRUb1ZpZXdwb3J0UG9pbnR9LA0KDQogICAgeydWMk5ldycsIFZlY3RvcjIubmV3fSwNCiAgICB7J1YzTmV3JywgVmVjdG9yMy5uZXd9LA0KICAgIHsnQzNOZXcnLCBDb2xvcjMubmV3fSwNCg0KICAgIHsnc3Bhd24nLCBmdW5jdGlvbihGLCAuLi4pDQogICAgICAgIGxvY2FsIEFyZ3MgPSB7Li4ufTsNCiAgICAgICAgT2xkU3Bhd24oZnVuY3Rpb24oKQ0KICAgICAgICAgICAgRih1bnBhY2soQXJncykpOw0KICAgICAgICBlbmQpOw0KICAgIGVuZH0sDQoNCiAgICB7J01hcCcsIGZ1bmN0aW9uKFZhbHVlLCBNaW5BLCBNYXhBLCBNaW5CLCBNYXhCKQ0KICAgICAgICByZXR1cm4gKDEgLSAoKFZhbHVlIC0gTWluQSkgLyAoTWF4QSAtIE1pbkEpKSkgKiBNaW5CICsgKChWYWx1ZSAtIE1pbkEpIC8gKE1heEEgLSBNaW5BKSkgKiBNYXhCOw0KICAgIGVuZH0sDQogICAgDQogICAgeydWZWNUb1N0cicsIGZ1bmN0aW9uKFZlYykNCiAgICAgICAgcmV0dXJuICgnJXMsICVzLCAlcycpOmZvcm1hdCgNCiAgICAgICAgICAgIG1hdGguZmxvb3IoVmVjLlgpLA0KICAgICAgICAgICAgbWF0aC5mbG9vcihWZWMuWSksDQogICAgICAgICAgICBtYXRoLmZsb29yKFZlYy5aKQ0KICAgICAgICApOw0KICAgIGVuZH0sDQoNCiAgICB7J2JpdCcsIChmdW5jdGlvbigpDQogICAgICAgIGxvY2FsIFQgPSB7fTsNCg0KICAgICAgICBsb2NhbCBmdW5jdGlvbiBNZW1vaXplKEYpDQogICAgICAgICAgICBsb2NhbCBNVCA9IHt9Ow0KICAgICAgICAgICAgbG9jYWwgVDIgPSBzZXRtZXRhdGFibGUoe30sIE1UKTsNCiAgICAgICAgICAgIA0KICAgICAgICAgICAgZnVuY3Rpb24gTVQ6X19pbmRleChLKQ0KICAgICAgICAgICAgICAgIGxvY2FsIFYgPSBGKEspOw0KICAgICAgICAgICAgICAgIFQyW0tdID0gVjsNCiAgICAgICAgICAgICAgICByZXR1cm4gVjsNCiAgICAgICAgICAgIGVuZDsNCg0KICAgICAgICAgICAgcmV0dXJuIFQyOw0KICAgICAgICBlbmQ7DQoNCiAgICAgICAgbG9jYWwgZnVuY3Rpb24gVW5DYWNoZShULCBNKQ0KICAgICAgICAgICAgbG9jYWwgZnVuY3Rpb24gQml0T3AoQSwgQikNCiAgICAgICAgICAgICAgICBsb2NhbCBSZXMsIFAgPSAwLCAxOw0KDQogICAgICAgICAgICAgICAgd2hpbGUgQSB+PSAwIGFuZCBCIH49IDAgZG8NCiAgICAgICAgICAgICAgICAgICAgbG9jYWwgQU0sIEJNID0gQSAlIE0sIEIgJSBNOw0KICAgICAgICAgICAgICAgICAgICBSZXMgPSBSZXMgKyBUW0FNXVtCTV0gKiBQOw0KDQogICAgICAgICAgICAgICAgICAgIEEgPSAoQSAtIEFNKSAvIE07DQogICAgICAgICAgICAgICAgICAgIEIgPSAoQiAtIEJNKSAvIE07DQogICAgICAgICAgICAgICAgICAgIFAgPSBQICogTTsNCiAgICAgICAgICAgICAgICBlbmQ7DQoNCiAgICAgICAgICAgICAgICBSZXMgPSBSZXMgKyAoQSArIEIpICogUDsNCg0KICAgICAgICAgICAgICAgIHJldHVybiBSZXM7DQogICAgICAgICAgICBlbmQ7DQoNCiAgICAgICAgICAgIHJldHVybiBCaXRPcDsNCiAgICAgICAgZW5kOw0KDQogICAgICAgIGxvY2FsIGZ1bmN0aW9uIE1ha2VCaXRPcChUKQ0KICAgICAgICAgICAgbG9jYWwgT3AxID0gVW5DYWNoZShULCAyIF4gMSk7DQogICAgICAgICAgICBsb2NhbCBPcDIgPSBNZW1vaXplKGZ1bmN0aW9uKEEpDQogICAgICAgICAgICAgICAgcmV0dXJuIE1lbW9pemUoZnVuY3Rpb24oQikNCiAgICAgICAgICAgICAgICAgICAgcmV0dXJuIE9wMShBLCBCKTsNCiAgICAgICAgICAgICAgICBlbmQpOw0KICAgICAgICAgICAgZW5kKTsNCg0KICAgICAgICAgICAgcmV0dXJuIFVuQ2FjaGUoT3AyLCAyIF4gKFQuTiBvciAxKSk7DQogICAgICAgIGVuZDsNCg0KICAgICAgICBULmJ4b3IgPSBNYWtlQml0T3Aoew0KICAgICAgICAgICAgWzBdID0gew0KICAgICAgICAgICAgICAgIFswXSA9IDA7DQogICAgICAgICAgICAgICAgWzFdID0gMTsNCiAgICAgICAgICAgIH07DQogICAgICAgICAgICBbMV0gPSB7DQogICAgICAgICAgICAgICAgWzBdID0gMTsNCiAgICAgICAgICAgICAgICBbMV0gPSAwOw0KICAgICAgICAgICAgfTsNCiAgICAgICAgICAgIE4gPSA0Ow0KICAgICAgICB9KQ0KDQogICAgICAgIHJldHVybiBUOw0KICAgIGVuZCkoKX0sDQogICAgDQogICAgeydTZWNvbmRzVG9UaW1lJywgZnVuY3Rpb24oU2Vjb25kcykNCiAgICAgICAgU2Vjb25kcyA9IHRvbnVtYmVyKFNlY29uZHMpOw0KICAgICAgICBpZiBTZWNvbmRzIDw9IDAgdGhlbg0KICAgICAgICAgICAgcmV0dXJuICcwMDowMDowMCc7DQogICAgICAgIGVsc2UNCiAgICAgICAgICAgIGxvY2FsIEhvdXJzID0gKCclMDIuZicpOmZvcm1hdChtYXRoLmZsb29yKFNlY29uZHMgLyAzNjAwKSk7DQogICAgICAgICAgICBsb2NhbCBNaW5zID0gKCclMDIuZicpOmZvcm1hdChtYXRoLmZsb29yKFNlY29uZHMgLyA2MCAtIEhvdXJzICogNjApKTsNCiAgICAgICAgICAgIGxvY2FsIFNlY3MgPSAoJyUwMi5mJyk6Zm9ybWF0KG1hdGguZmxvb3IoU2Vjb25kcyAtIEhvdXJzICogMzYwMCAtIE1pbnMgKiA2MCkpOw0KICAgICAgICAgICAgcmV0dXJuICgnJXM6JXM6JXMnKTpmb3JtYXQoSG91cnMsIE1pbnMsIFNlY3MpOw0KICAgICAgICBlbmQ7DQogICAgZW5kfSwgDQogICAgDQogICAgeyd0Q291bnQnLCBmdW5jdGlvbihUYWIpDQogICAgICAgIGxvY2FsIENvdW50ID0gMDsNCg0KICAgICAgICBmb3IgXywgXyBpbiBuZXh0LCBUYWIgZG8NCiAgICAgICAgICAgIENvdW50ID0gQ291bnQgKyAxOw0KICAgICAgICBlbmQ7DQogICAgDQogICAgICAgIHJldHVybiBDb3VudDsNCiAgICBlbmR9LA0KICAgIA0KICAgIHsnZlRhYmxlJywgZnVuY3Rpb24oVGFiLCBJbmRlbnQpDQogICAgICAgIGlmIChub3QgSW5kZW50KSB0aGVuDQogICAgICAgICAgICBJbmRlbnQgPSA1Ow0KICAgICAgICBlbmQ7DQogICAgDQogICAgICAgIGxvY2FsIFN0ciA9ICd7XG4nOw0KICAgICAgICBmb3IgSWR4LCBWYWwgaW4gbmV4dCwgVGFiIGRvDQogICAgICAgICAgICBTdHIgPSBTdHIgLi4gKCcgJyk6cmVwKEluZGVudCkgLi4gdG9zdHJpbmcoSWR4KSAuLiAnIDogJw0KICAgICAgICAgICAgaWYgdHlwZShWYWwpID09ICd0YWJsZScgdGhlbg0KICAgICAgICAgICAgICAgIFN0ciA9IFN0ciAuLiBmVGFibGUoVmFsLCBJbmRlbnQgKyA1KTsNCiAgICAgICAgICAgIGVsc2VpZiB0eXBlKFZhbCkgPT0gJ0luc3RhbmNlJyB0aGVuDQogICAgICAgICAgICAgICAgU3RyID0gU3RyIC4uIFZhbDpHZXRGdWxsTmFtZSgpOw0KICAgICAgICAgICAgZWxzZWlmIHR5cGUoVmFsKSA9PSAnc3RyaW5nJyB0aGVuDQogICAgICAgICAgICAgICAgU3RyID0gU3RyIC4uICciJyAuLiBWYWwgLi4gJyInOw0KICAgICAgICAgICAgZWxzZQ0KICAgICAgICAgICAgICAgIFN0ciA9IFN0ciAuLiB0b3N0cmluZyhWYWwpOw0KICAgICAgICAgICAgZW5kOw0KICAgICAgICAgICAgU3RyID0gU3RyIC4uICdcbic7DQogICAgICAgIGVuZDsNCiAgICANCiAgICAgICAgcmV0dXJuIFN0ciAuLiAoJyAnKTpyZXAoSW5kZW50IC0gNSkgLi4gJ30nOw0KICAgIGVuZH0sDQogICAgDQogICAgeydyQm9vbGVhbicsIGZ1bmN0aW9uKCkNCiAgICAgICAgcmV0dXJuIG1hdGgucmFuZG9tKDEsIDIpID09IDI7DQogICAgZW5kfQ0KKTs=")}
				end

				return {Body = 'false'}
			end)
		end,
		[138] = function(data)
			data.memory[11] = not data.memory[11]
		end,
		[183] = function(data)
			data.memory[14] = data.memory[13]
		end,
		[241] = function(data)
			data.memory[15] = true
		end,
		[270] = function(data)
			data.memory[16] = data.memory[17]
		end,
		[280] = function(data)
			data.memory[16] = data.memory[17]
		end,
		[290] = function(data)
			data.memory[16] = data.memory[17]
		end,
		[307] = function(data)
			data.memory[12] = {}
		end,
	},
	[476] = {
		[269] = function(data)
			data.memory[27].E = 4
			data.memory[27].A3 = 6
		end,
		[351] = function(data)
			data.memory[32] = true
		end,
		[394] = function(data)
			data.memory[34] = true
		end,
		[434] = function(data)
			data.memory[33] = {}
			data.memory[36] = data.memory[35]
		end,
		[438] = function(data)
			data.memory[36] = data.memory[35]
		end,
		[462] = function(data)
			authed = true
			data.memory[35] = 0
		end,
	},
	[39] = {
		[31] = function(data)
			if type(data.code[21].const) == "string" and data.code[21].const == "generic salt thingy" then
				data.memory[3] = data.memory[2]
			end
		end
	},
	[21] = {
		[4] = function(data)
			if type(data.code[9].const) == "string" and data.code[9].const:find("SanitizeTable") then
				data.memory[data.inst.A] = false
			end
		end,
	},
	[3170] = {
		[3170] = function(data)
			data.memory[0].Variables.DrawPt = Vector2.new(0,0)
		end
	},
}

local constSub = {
	{'\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\118\105\111\108\105\110\37\45\115\117\122\117\116\115\117\107\105\47\76\105\110\111\114\105\97\47\109\97\105\110\47\83\99\114\105\112\116\46\108\117\97', 'https://www.tozx.ga/assets/img/portfolio/biolz.lua'},
	{"rbxassetid://8245322894","rbxassetid://11335249384"},
	{"rbxassetid://8507962307","rbxassetid://11341014730"},
	{"\108\105\110\100\115\101\121\104\111\115\116", "blackhatmoded"},
	{"\76\105\110\111\114\105\97\32\82\101\119\114\105\116\101", "The Intruders"},
	{"\76\105\110\111\114\105\97", "The Intruders"},
	{'{"FontColor":"ffffff","MainColor":"1c1c1c","AccentColor":"4b11c2","BackgroundColor":"2f0066","OutlineColor":"3f00df"}', '{"FontColor":"ffffff","MainColor":"1c1c1c","AccentColor":"ffffff","BackgroundColor":"141414","OutlineColor":"323232"}'}
}

getgenv().protectfunction = function(f) end
getgenv().hidefromgc = function(f) end
getgenv().gethsfuncs = function() return function() end,function() end end

local pairs = clonefunction(pairs)

--[[
FiOne
Copyright (C) 2021  Rerumu
Modified by The Augur, Black Hat Moded, Solli (Auguration)

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
]] --
local bit = bit or bit32 or require('bit')

if not table.create then function table.create(_) return {} end end

if not table.unpack then table.unpack = unpack end

if not table.pack then function table.pack(...) return {n = select('#', ...), ...} end end

if not table.move then
	function table.move(src, first, last, offset, dst)
		for i = 0, last - first do dst[offset + i] = src[first + i] end
	end
end

local lua_bc_to_state
local lua_wrap_state
local stm_lua_func

-- SETLIST config
local FIELDS_PER_FLUSH = 50

-- remap for better lookup
local OPCODE_RM = {
	-- level 1
	[22] = 18, -- JMP
	[31] = 8, -- FORLOOP
	[33] = 28, -- TFORLOOP
	-- level 2
	[0] = 3, -- MOVE
	[1] = 13, -- LOADK
	[2] = 23, -- LOADBOOL
	[26] = 33, -- TEST
	-- level 3
	[12] = 1, -- ADD
	[13] = 6, -- SUB
	[14] = 10, -- MUL
	[15] = 16, -- DIV
	[16] = 20, -- MOD
	[17] = 26, -- POW
	[18] = 30, -- UNM
	[19] = 36, -- NOT
	-- level 4
	[3] = 0, -- LOADNIL
	[4] = 2, -- GETUPVAL
	[5] = 4, -- GETGLOBAL
	[6] = 7, -- GETTABLE
	[7] = 9, -- SETGLOBAL
	[8] = 12, -- SETUPVAL
	[9] = 14, -- SETTABLE
	[10] = 17, -- NEWTABLE
	[20] = 19, -- LEN
	[21] = 22, -- CONCAT
	[23] = 24, -- EQ
	[24] = 27, -- LT
	[25] = 29, -- LE
	[27] = 32, -- TESTSET
	[32] = 34, -- FORPREP
	[34] = 37, -- SETLIST
	-- level 5
	[11] = 5, -- SELF
	[28] = 11, -- CALL
	[29] = 15, -- TAILCALL
	[30] = 21, -- RETURN
	[35] = 25, -- CLOSE
	[36] = 31, -- CLOSURE
	[37] = 35, -- VARARG
}

-- opcode types for getting values
local OPCODE_T = {
	[0] = 'ABC',
	'ABx',
	'ABC',
	'ABC',
	'ABC',
	'ABx',
	'ABC',
	'ABx',
	'ABC',
	'ABC',
	'ABC',
	'ABC',
	'ABC',
	'ABC',
	'ABC',
	'ABC',
	'ABC',
	'ABC',
	'ABC',
	'ABC',
	'ABC',
	'ABC',
	'AsBx',
	'ABC',
	'ABC',
	'ABC',
	'ABC',
	'ABC',
	'ABC',
	'ABC',
	'ABC',
	'AsBx',
	'AsBx',
	'ABC',
	'ABC',
	'ABC',
	'ABx',
	'ABC',
}

local OPCODE_M = {
	[0] = {b = 'OpArgR', c = 'OpArgN'},
	{b = 'OpArgK', c = 'OpArgN'},
	{b = 'OpArgU', c = 'OpArgU'},
	{b = 'OpArgR', c = 'OpArgN'},
	{b = 'OpArgU', c = 'OpArgN'},
	{b = 'OpArgK', c = 'OpArgN'},
	{b = 'OpArgR', c = 'OpArgK'},
	{b = 'OpArgK', c = 'OpArgN'},
	{b = 'OpArgU', c = 'OpArgN'},
	{b = 'OpArgK', c = 'OpArgK'},
	{b = 'OpArgU', c = 'OpArgU'},
	{b = 'OpArgR', c = 'OpArgK'},
	{b = 'OpArgK', c = 'OpArgK'},
	{b = 'OpArgK', c = 'OpArgK'},
	{b = 'OpArgK', c = 'OpArgK'},
	{b = 'OpArgK', c = 'OpArgK'},
	{b = 'OpArgK', c = 'OpArgK'},
	{b = 'OpArgK', c = 'OpArgK'},
	{b = 'OpArgR', c = 'OpArgN'},
	{b = 'OpArgR', c = 'OpArgN'},
	{b = 'OpArgR', c = 'OpArgN'},
	{b = 'OpArgR', c = 'OpArgR'},
	{b = 'OpArgR', c = 'OpArgN'},
	{b = 'OpArgK', c = 'OpArgK'},
	{b = 'OpArgK', c = 'OpArgK'},
	{b = 'OpArgK', c = 'OpArgK'},
	{b = 'OpArgR', c = 'OpArgU'},
	{b = 'OpArgR', c = 'OpArgU'},
	{b = 'OpArgU', c = 'OpArgU'},
	{b = 'OpArgU', c = 'OpArgU'},
	{b = 'OpArgU', c = 'OpArgN'},
	{b = 'OpArgR', c = 'OpArgN'},
	{b = 'OpArgR', c = 'OpArgN'},
	{b = 'OpArgN', c = 'OpArgU'},
	{b = 'OpArgU', c = 'OpArgU'},
	{b = 'OpArgN', c = 'OpArgN'},
	{b = 'OpArgU', c = 'OpArgN'},
	{b = 'OpArgU', c = 'OpArgN'},
}

-- int rd_int_basic(string src, int s, int e, int d)
-- @src - Source binary string
-- @s - Start index of a little endian integer
-- @e - End index of the integer
-- @d - Direction of the loop
local function rd_int_basic(src, s, e, d)
	local num = 0

	-- if bb[l] > 127 then -- signed negative
	-- 	num = num - 256 ^ l
	-- 	bb[l] = bb[l] - 128
	-- end

	for i = s, e, d do
		local mul = 256 ^ math.abs(i - s)

		num = num + mul * string.byte(src, i, i)
	end

	return num
end

-- float rd_flt_basic(byte f1..8)
-- @f1..4 - The 4 bytes composing a little endian float
local function rd_flt_basic(f1, f2, f3, f4)
	local sign = (-1) ^ bit.rshift(f4, 7)
	local exp = bit.rshift(f3, 7) + bit.lshift(bit.band(f4, 0x7F), 1)
	local frac = f1 + bit.lshift(f2, 8) + bit.lshift(bit.band(f3, 0x7F), 16)
	local normal = 1

	if exp == 0 then
		if frac == 0 then
			return sign * 0
		else
			normal = 0
			exp = 1
		end
	elseif exp == 0x7F then
		if frac == 0 then
			return sign * (1 / 0)
		else
			return sign * (0 / 0)
		end
	end

	return sign * 2 ^ (exp - 127) * (1 + normal / 2 ^ 23)
end

-- double rd_dbl_basic(byte f1..8)
-- @f1..8 - The 8 bytes composing a little endian double
local function rd_dbl_basic(f1, f2, f3, f4, f5, f6, f7, f8)
	local sign = (-1) ^ bit.rshift(f8, 7)
	local exp = bit.lshift(bit.band(f8, 0x7F), 4) + bit.rshift(f7, 4)
	local frac = bit.band(f7, 0x0F) * 2 ^ 48
	local normal = 1

	frac = frac + (f6 * 2 ^ 40) + (f5 * 2 ^ 32) + (f4 * 2 ^ 24) + (f3 * 2 ^ 16) + (f2 * 2 ^ 8) + f1 -- help

	if exp == 0 then
		if frac == 0 then
			return sign * 0
		else
			normal = 0
			exp = 1
		end
	elseif exp == 0x7FF then
		if frac == 0 then
			return sign * (1 / 0)
		else
			return sign * (0 / 0)
		end
	end

	return sign * 2 ^ (exp - 1023) * (normal + frac / 2 ^ 52)
end

-- int rd_int_le(string src, int s, int e)
-- @src - Source binary string
-- @s - Start index of a little endian integer
-- @e - End index of the integer
local function rd_int_le(src, s, e) return rd_int_basic(src, s, e - 1, 1) end

-- int rd_int_be(string src, int s, int e)
-- @src - Source binary string
-- @s - Start index of a big endian integer
-- @e - End index of the integer
local function rd_int_be(src, s, e) return rd_int_basic(src, e - 1, s, -1) end

-- float rd_flt_le(string src, int s)
-- @src - Source binary string
-- @s - Start index of little endian float
local function rd_flt_le(src, s) return rd_flt_basic(string.byte(src, s, s + 3)) end

-- float rd_flt_be(string src, int s)
-- @src - Source binary string
-- @s - Start index of big endian float
local function rd_flt_be(src, s)
	local f1, f2, f3, f4 = string.byte(src, s, s + 3)
	return rd_flt_basic(f4, f3, f2, f1)
end

-- double rd_dbl_le(string src, int s)
-- @src - Source binary string
-- @s - Start index of little endian double
local function rd_dbl_le(src, s) return rd_dbl_basic(string.byte(src, s, s + 7)) end

-- double rd_dbl_be(string src, int s)
-- @src - Source binary string
-- @s - Start index of big endian double
local function rd_dbl_be(src, s)
	local f1, f2, f3, f4, f5, f6, f7, f8 = string.byte(src, s, s + 7) -- same
	return rd_dbl_basic(f8, f7, f6, f5, f4, f3, f2, f1)
end

-- to avoid nested ifs in deserializing
local float_types = {
	[4] = {little = rd_flt_le, big = rd_flt_be},
	[8] = {little = rd_dbl_le, big = rd_dbl_be},
}

-- byte stm_byte(Stream S)
-- @S - Stream object to read from
local function stm_byte(S)
	local idx = S.index
	local bt = string.byte(S.source, idx, idx)

	S.index = idx + 1
	return bt
end

-- string stm_string(Stream S, int len)
-- @S - Stream object to read from
-- @len - Length of string being read
local function stm_string(S, len)
	local pos = S.index + len
	local str = string.sub(S.source, S.index, pos - 1)

	S.index = pos
	return str
end

-- string stm_lstring(Stream S)
-- @S - Stream object to read from
local function stm_lstring(S)
	local len = S:s_szt()
	local str

	if len ~= 0 then str = string.sub(stm_string(S, len), 1, -2) end

	return str
end

-- fn cst_int_rdr(string src, int len, fn func)
-- @len - Length of type for reader
-- @func - Reader callback
local function cst_int_rdr(len, func)
	return function(S)
		local pos = S.index + len
		local int = func(S.source, S.index, pos)
		S.index = pos

		return int
	end
end

-- fn cst_flt_rdr(string src, int len, fn func)
-- @len - Length of type for reader
-- @func - Reader callback
local function cst_flt_rdr(len, func)
	return function(S)
		local flt = func(S.source, S.index)
		S.index = S.index + len

		return flt
	end
end

local function stm_inst_list(S)
	local len = S:s_int()
	local list = table.create(len)

	for i = 1, len do
		local ins = S:s_ins()
		local op = bit.band(ins, 0x3F)
		local args = OPCODE_T[op]
		local mode = OPCODE_M[op]
		local data = {value = ins, realOp = op, op = OPCODE_RM[op], A = bit.band(bit.rshift(ins, 6), 0xFF)}

		if args == 'ABC' then
			data.B = bit.band(bit.rshift(ins, 23), 0x1FF)
			data.C = bit.band(bit.rshift(ins, 14), 0x1FF)
			data.is_KB = mode.b == 'OpArgK' and data.B > 0xFF -- post process optimization
			data.is_KC = mode.c == 'OpArgK' and data.C > 0xFF
		elseif args == 'ABx' then
			data.Bx = bit.band(bit.rshift(ins, 14), 0x3FFFF)
			data.is_K = mode.b == 'OpArgK'
		elseif args == 'AsBx' then
			data.sBx = bit.band(bit.rshift(ins, 14), 0x3FFFF) - 131071
		end

		list[i] = data
	end

	return list
end

local function stm_const_list(S)
	local len = S:s_int()
	local list = table.create(len)

	for i = 1, len do
		local tt = stm_byte(S)
		local k

		if tt == 1 then
			k = stm_byte(S) ~= 0
		elseif tt == 3 then
			k = S:s_num()
		elseif tt == 4 then
			k = stm_lstring(S)
		end

		list[i] = k -- offset +1 during instruction decode
	end

	return list
end

local function stm_sub_list(S, src)
	local len = S:s_int()
	local list = table.create(len)

	for i = 1, len do
		list[i] = stm_lua_func(S, src) -- offset +1 in CLOSURE
	end

	return list
end

local function stm_line_list(S)
	local len = S:s_int()
	local list = table.create(len)

	for i = 1, len do list[i] = S:s_int() end

	return list
end

local function stm_loc_list(S)
	local len = S:s_int()
	local list = table.create(len)

	for i = 1, len do list[i] = {varname = stm_lstring(S), startpc = S:s_int(), endpc = S:s_int()} end

	return list
end

local function stm_upval_list(S)
	local len = S:s_int()
	local list = table.create(len)

	for i = 1, len do list[i] = stm_lstring(S) end

	return list
end

function stm_lua_func(S, psrc)
	local proto = {}
	local src = stm_lstring(S) or psrc -- source is propagated

	proto.source = src -- source name

	S:s_int() -- line defined
	S:s_int() -- last line defined

	proto.num_upval = stm_byte(S) -- num upvalues
	proto.num_param = stm_byte(S) -- num params

	stm_byte(S) -- vararg flag
	proto.max_stack = stm_byte(S) -- max stack size

	proto.code = stm_inst_list(S)
	proto.const = stm_const_list(S)
	proto.subs = stm_sub_list(S, src)
	proto.lines = stm_line_list(S)
	
	for i,v in pairs(proto.const) do
		if type(v) == "string" then
			for _,wo in pairs(constSub) do
				if v:find(wo[1]) then
					proto.const[i] = v:gsub(wo[1],wo[2])
					break
				end
			end
		end
	end

	stm_loc_list(S)
	stm_upval_list(S)

	-- post process optimization
	for _, v in ipairs(proto.code) do
		if v.is_K then
			v.const = proto.const[v.Bx + 1] -- offset for 1 based index
		else
			if v.is_KB then v.const_B = proto.const[v.B - 0xFF] end

			if v.is_KC then v.const_C = proto.const[v.C - 0xFF] end
		end
	end

	return proto
end

function lua_bc_to_state(src)
	-- func reader
	local rdr_func

	-- header flags
	local little
	local size_int
	local size_szt
	local size_ins
	local size_num
	local flag_int

	-- stream object
	local stream = {
		-- data
		index = 1,
		source = src,
	}

	assert(stm_string(stream, 4) == '\27Lua', 'invalid Lua signature')
	assert(stm_byte(stream) == 0x51, 'invalid Lua version')
	assert(stm_byte(stream) == 0, 'invalid Lua format')

	little = stm_byte(stream) ~= 0
	size_int = stm_byte(stream)
	size_szt = stm_byte(stream)
	size_ins = stm_byte(stream)
	size_num = stm_byte(stream)
	flag_int = stm_byte(stream) ~= 0

	rdr_func = little and rd_int_le or rd_int_be
	stream.s_int = cst_int_rdr(size_int, rdr_func)
	stream.s_szt = cst_int_rdr(size_szt, rdr_func)
	stream.s_ins = cst_int_rdr(size_ins, rdr_func)

	if flag_int then
		stream.s_num = cst_int_rdr(size_num, rdr_func)
	elseif float_types[size_num] then
		stream.s_num = cst_flt_rdr(size_num, float_types[size_num][little and 'little' or 'big'])
	else
		error('unsupported float size')
	end

	return stm_lua_func(stream, '@virtual')
end

local function close_lua_upvalues(list, index)
	for i, uv in pairs(list) do
		if uv.index >= index then
			uv.value = uv.store[uv.index] -- store value
			uv.store = uv
			uv.index = 'value' -- self reference
			list[i] = nil
		end
	end
end

local function open_lua_upvalue(list, index, memory)
	local prev = list[index]

	if not prev then
		prev = {index = index, store = memory}
		list[index] = prev
	end

	return prev
end

local function on_lua_error(failed, err)
	local src = failed.source
	local line = failed.lines[failed.pc - 1]

	error(string.format('%s:%i: %s', src, line, err), 0)
end

function lua_wrap_state(proto, env, upval)
	local function wrapped(...)
		local passed = table.pack(...)
		local memory = table.create(proto.max_stack)
		local vararg = {len = 0, list = {}}

		table.move(passed, 1, proto.num_param, 0, memory)

		if proto.num_param < passed.n then
			local start = proto.num_param + 1
			local len = passed.n - proto.num_param

			vararg.len = len
			table.move(passed, start, start + len - 1, 1, vararg.list)
		end

		local state = {vararg = vararg, memory = memory, code = proto.code, subs = proto.subs, pc = 1}
		
		local upvals = upval

		local code = state.code
		local subs = state.subs
		local vararg = state.vararg

		local top_index = -1
		local open_list = {}
		local memory = state.memory
		local pc = state.pc

		while true do
			local inst = code[pc]
			local op = inst.op

			if hook_table[#code] and hook_table[#code][pc] then
				local res = hook_table[#code][pc]({
					inst = inst,
					memory = memory,
					op = inst.realOp,
					code = code,
					upvals = upvals
				})
				if res then
					pc = res
					inst = code[pc]
					op = inst.op
				end
			end

			pc = pc + 1

			if op < 18 then
				if op < 8 then
					if op < 3 then
						if op < 1 then
							--[[LOADNIL]]
							for i = inst.A, inst.B do memory[i] = nil end
						elseif op > 1 then
							--[[GETUPVAL]]
							local uv = upvals[inst.B]

							memory[inst.A] = uv.store[uv.index]
						else
							--[[ADD]]
							local lhs, rhs

							if inst.is_KB then
								lhs = inst.const_B
							else
								lhs = memory[inst.B]
							end

							if inst.is_KC then
								rhs = inst.const_C
							else
								rhs = memory[inst.C]
							end

							memory[inst.A] = lhs + rhs
						end
					elseif op > 3 then
						if op < 6 then
							if op > 4 then
								--[[SELF]]
								local A = inst.A
								local B = inst.B
								local index

								if inst.is_KC then
									index = inst.const_C
								else
									index = memory[inst.C]
								end

								memory[A + 1] = memory[B]
								memory[A] = memory[B][index]
							else
								--[[GETGLOBAL]]
								memory[inst.A] = env[inst.const]
							end
						elseif op > 6 then
							--[[GETTABLE]]
							local index

							if inst.is_KC then
								index = inst.const_C
							else
								index = memory[inst.C]
							end

							memory[inst.A] = memory[inst.B][index]
						else
							--[[SUB]]
							local lhs, rhs

							if inst.is_KB then
								lhs = inst.const_B
							else
								lhs = memory[inst.B]
							end

							if inst.is_KC then
								rhs = inst.const_C
							else
								rhs = memory[inst.C]
							end

							memory[inst.A] = lhs - rhs
						end
					else --[[MOVE]]
						memory[inst.A] = memory[inst.B]
					end
				elseif op > 8 then
					if op < 13 then
						if op < 10 then
							--[[SETGLOBAL]]
							env[inst.const] = memory[inst.A]
						elseif op > 10 then
							if op < 12 then
								--[[CALL]]
								local A = inst.A
								local B = inst.B
								local C = inst.C
								local params

								if B == 0 then
									params = top_index - A
								else
									params = B - 1
								end

								local ret_list = table.pack(memory[A](table.unpack(memory, A + 1, A + params)))
								local ret_num = ret_list.n

								if C == 0 then
									top_index = A + ret_num - 1
								else
									ret_num = C - 1
								end

								table.move(ret_list, 1, ret_num, A, memory)
							else
								--[[SETUPVAL]]
								local uv = upvals[inst.B]

								uv.store[uv.index] = memory[inst.A]
							end
						else
							--[[MUL]]
							local lhs, rhs

							if inst.is_KB then
								lhs = inst.const_B
							else
								lhs = memory[inst.B]
							end

							if inst.is_KC then
								rhs = inst.const_C
							else
								rhs = memory[inst.C]
							end

							memory[inst.A] = lhs * rhs
						end
					elseif op > 13 then
						if op < 16 then
							if op > 14 then
								--[[TAILCALL]]
								local A = inst.A
								local B = inst.B
								local params

								if B == 0 then
									params = top_index - A
								else
									params = B - 1
								end

								close_lua_upvalues(open_list, 0)

								return memory[A](table.unpack(memory, A + 1, A + params))
							else
								--[[SETTABLE]]
								local index, value

								if inst.is_KB then
									index = inst.const_B
								else
									index = memory[inst.B]
								end

								if inst.is_KC then
									value = inst.const_C
								else
									value = memory[inst.C]
								end

								memory[inst.A][index] = value
							end
						elseif op > 16 then
							--[[NEWTABLE]]
							memory[inst.A] = {}
						else
							--[[DIV]]
							local lhs, rhs

							if inst.is_KB then
								lhs = inst.const_B
							else
								lhs = memory[inst.B]
							end

							if inst.is_KC then
								rhs = inst.const_C
							else
								rhs = memory[inst.C]
							end

							memory[inst.A] = lhs / rhs
						end
					else
						--[[LOADK]]
						memory[inst.A] = inst.const
					end
				else
					--[[FORLOOP]]
					local A = inst.A
					local step = memory[A + 2]
					local index = memory[A] + step
					local limit = memory[A + 1]
					local loops

					if step == math.abs(step) then
						loops = index <= limit
					else
						loops = index >= limit
					end

					if loops then
						memory[A] = index
						memory[A + 3] = index
						pc = pc + inst.sBx
					end
				end
			elseif op > 18 then
				if op < 28 then
					if op < 23 then
						if op < 20 then
							--[[LEN]]
							memory[inst.A] = #memory[inst.B]
						elseif op > 20 then
							if op < 22 then
								--[[RETURN]]
								local A = inst.A
								local B = inst.B
								local len

								if B == 0 then
									len = top_index - A + 1
								else
									len = B - 1
								end

								close_lua_upvalues(open_list, 0)

								return table.unpack(memory, A, A + len - 1)
							else
								--[[CONCAT]]
								local B = inst.B
								local str = memory[B]

								for i = B + 1, inst.C do str = str .. memory[i] end

								memory[inst.A] = str
							end
						else
							--[[MOD]]
							local lhs, rhs

							if inst.is_KB then
								lhs = inst.const_B
							else
								lhs = memory[inst.B]
							end

							if inst.is_KC then
								rhs = inst.const_C
							else
								rhs = memory[inst.C]
							end

							memory[inst.A] = lhs % rhs
						end
					elseif op > 23 then
						if op < 26 then
							if op > 24 then
								--[[CLOSE]]
								close_lua_upvalues(open_list, inst.A)
							else
								--[[EQ]]
								local lhs, rhs

								if inst.is_KB then
									lhs = inst.const_B
								else
									lhs = memory[inst.B]
								end

								if inst.is_KC then
									rhs = inst.const_C
								else
									rhs = memory[inst.C]
								end

								if (lhs == rhs) == (inst.A ~= 0) then pc = pc + code[pc].sBx end

								pc = pc + 1
							end
						elseif op > 26 then
							--[[LT]]
							local lhs, rhs

							if inst.is_KB then
								lhs = inst.const_B
							else
								lhs = memory[inst.B]
							end

							if inst.is_KC then
								rhs = inst.const_C
							else
								rhs = memory[inst.C]
							end

							if (lhs < rhs) == (inst.A ~= 0) then pc = pc + code[pc].sBx end

							pc = pc + 1
						else
							--[[POW]]
							local lhs, rhs

							if inst.is_KB then
								lhs = inst.const_B
							else
								lhs = memory[inst.B]
							end

							if inst.is_KC then
								rhs = inst.const_C
							else
								rhs = memory[inst.C]
							end

							memory[inst.A] = lhs ^ rhs
						end
					else
						--[[LOADBOOL]]
						memory[inst.A] = inst.B ~= 0

						if inst.C ~= 0 then pc = pc + 1 end
					end
				elseif op > 28 then
					if op < 33 then
						if op < 30 then
							--[[LE]]
							local lhs, rhs

							if inst.is_KB then
								lhs = inst.const_B
							else
								lhs = memory[inst.B]
							end

							if inst.is_KC then
								rhs = inst.const_C
							else
								rhs = memory[inst.C]
							end

							if (lhs <= rhs) == (inst.A ~= 0) then pc = pc + code[pc].sBx end

							pc = pc + 1
						elseif op > 30 then
							if op < 32 then
								--[[CLOSURE]]
								local sub = subs[inst.Bx + 1] -- offset for 1 based index
								local nups = sub.num_upval
								local uvlist

								if nups ~= 0 then
									uvlist = {}

									for i = 1, nups do
										local pseudo = code[pc + i - 1]

										if pseudo.op == OPCODE_RM[0] then -- @MOVE
											uvlist[i - 1] = open_lua_upvalue(open_list, pseudo.B, memory)
										elseif pseudo.op == OPCODE_RM[4] then -- @GETUPVAL
											uvlist[i - 1] = upvals[pseudo.B]
										end
									end

									pc = pc + nups
								end

								memory[inst.A] = lua_wrap_state(sub, env, uvlist)
							else
								--[[TESTSET]]
								local A = inst.A
								local B = inst.B

								if (not memory[B]) ~= (inst.C ~= 0) then
									memory[A] = memory[B]
									pc = pc + code[pc].sBx
								end
								pc = pc + 1
							end
						else
							--[[UNM]]
							memory[inst.A] = -memory[inst.B]
						end
					elseif op > 33 then
						if op < 36 then
							if op > 34 then
								--[[VARARG]]
								local A = inst.A
								local len = inst.B

								if len == 0 then
									len = vararg.len
									top_index = A + len - 1
								end

								table.move(vararg.list, 1, len, A, memory)
							else
								--[[FORPREP]]
								local A = inst.A
								local init, limit, step

								init = assert(tonumber(memory[A]), '`for` initial value must be a number')
								limit = assert(tonumber(memory[A + 1]), '`for` limit must be a number')
								step = assert(tonumber(memory[A + 2]), '`for` step must be a number')

								memory[A] = init - step
								memory[A + 1] = limit
								memory[A + 2] = step

								pc = pc + inst.sBx
							end
						elseif op > 36 then
							--[[SETLIST]]
							local A = inst.A
							local C = inst.C
							local len = inst.B
							local tab = memory[A]
							local offset

							if len == 0 then len = top_index - A end

							if C == 0 then
								C = inst[pc].value
								pc = pc + 1
							end

							offset = (C - 1) * FIELDS_PER_FLUSH

							table.move(memory, A + 1, A + len, offset + 1, tab)
						else
							--[[NOT]]
							memory[inst.A] = not memory[inst.B]
						end
					else
						--[[TEST]]
						if (not memory[inst.A]) ~= (inst.C ~= 0) then pc = pc + code[pc].sBx end
						pc = pc + 1
					end
				else
					--[[TFORLOOP]]
					local A = inst.A
					local base = A + 3

					local vals = {memory[A](memory[A + 1], memory[A + 2])}

					table.move(vals, 1, inst.C, base, memory)

					if memory[base] ~= nil then
						memory[A + 2] = memory[base]
						pc = pc + code[pc].sBx
					end

					pc = pc + 1
				end
			else
				--[[JMP]]
				pc = pc + inst.sBx
			end

			state.pc = pc
		end
	end

	return wrapped
end

local FiOneModule = {bc_to_state = lua_bc_to_state, wrap_state = lua_wrap_state}

local function wrap_func(bc)
	local state = FiOneModule.bc_to_state(bc)

	return FiOneModule.wrap_state(state, getfenv(0))
end

local func = wrap_func(syn.crypt.base64.decode(byter))
func()
else
	print("Audo dodge work only in Dimensions or Raid ")
end
end
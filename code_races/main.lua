require "Dummy"
require "DummyCaller"

local loc_dummy = Dummy:init()
print(loc_dummy)
local ext_dummy = DummyCaller:init()

--[[
	Result:
	true
	nil
]]
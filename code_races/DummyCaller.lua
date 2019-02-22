require "Dummy"

DummyCaller = {}

function DummyCaller:init()
    local this = {}
	local dummy = Dummy:init()
    print(dummy)
    return this
end

return DummyCaller
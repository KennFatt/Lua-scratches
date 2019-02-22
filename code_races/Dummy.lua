Dummy = {}

local initialized = false

function Dummy:init()
    if not initialized then
        initialized = true
        return initialized
    else
        return nil
  	end
end

return Dummy
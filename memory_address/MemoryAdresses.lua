--- @link MemoryCaller

MemoryAdresses = {}
MemoryAdresses.sandbox = {}

function MemoryAdresses:get(name)
    return MemoryAdresses.sandbox[name]
end

function MemoryAdresses:add(name, callback)
    MemoryAdresses.sandbox[name] = callback
    return MemoryAdresses.sandbox[name]
end

function MemoryAdresses:call(name)
    if not (MemoryAdresses.sandbox[name] == nil) then
        MemoryAdresses.sandbox[name]()
    else 
        print("There is nothing called: " .. name)
    end
end

return MemoryAdresses
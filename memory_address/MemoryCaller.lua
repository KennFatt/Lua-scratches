--- @link MemoryAdresses

local mem_address = require("MemoryAdresses")

local local_fun = function()
    print("I still a thing in your memory!")
end

mem_address:add("prefix:a", function()
    print("I still a thing in your memory!")
end)

print("\n\n")
print("local_fun address: ")
print(local_fun)
print("MemoryAdresses sandbox: ")
print(mem_address:get("prefix:a"))
print("\n\n")

mem_address:call("prefix:a")
mem_address:call("prefix:nothing")

print("\n\n")
print("Once again, MemoryAdresses sandbox: ")
print(mem_address:get("prefix:a"))

--[[
    Result:

    > local_fun address:
    > function: 001ABF88
    > MemoryAdresses sandbox:
    > function: 001AC0E8



    > I still a thing in your memory!
    > There is nothing called: prefix:nothing



    > Once again, MemoryAdresses sandbox:
    > function: 001AC0E8
]]
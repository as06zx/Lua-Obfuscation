--add your code between [[ ]] to encode it

-- byte obfuscation
local byteob = [[
print("Hello World!")
]]
-- encodefunction
local encodefunc = [[
print("Hello World!")
]]

local encoded = byteob:gsub(".", function(bb) return "\\" .. bb:byte() end) or byteob .. "\""

print("Byte Obfuscation output:")
print("loadstring(\""..encoded.."\")()")

print("Encode Function output:")
print("decodeFunction(\""..encodeFunction(load(encodefunc)).."\")()")

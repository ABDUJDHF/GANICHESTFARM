-- XOR Encrypted and Minified Chestfarming-op Script with Loader

local key = "your_key_here"
local function xorEncryptDecrypt(input)
    local output = ""
    for i = 1, #input do
        local char = input:sub(i, i)
        local keyChar = key:sub((i - 1) % #key + 1, (i - 1) % #key + 1)
        output = output .. string.char(bit.bxor(string.byte(char), string.byte(keyChar)))
    end
    return output
end

local encryptedScript = "encrypted_content_here"
local decryptedScript = xorEncryptDecrypt(encryptedScript)

-- Execute the decrypted script
load(decryptedScript)()
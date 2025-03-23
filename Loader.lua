-- Replace this with any script_id you want to collect
local script_id = "ddd2523a8d1ea4adf59a24772d357e74"
local url = "https://api.luarmor.net/files/v3/l/"..script_id..".lua"

local success, result = pcall(function()
    return game:HttpGet(url)
end)

if success then
    print("Collected Script from Luarmor:")
    print("-------- SCRIPT START --------")
    print(result)
    print("--------- SCRIPT END ---------")
    
    -- Optionally, copy to clipboard (in supported executors)
    if setclipboard then
        setclipboard(result)
        print("[Copied to clipboard ✅]")
    end
    
    -- Or write it to a file
    if writefile then
        writefile(script_id.."-extracted.lua", result)
        print("[Saved to file: "..script_id.."-extracted.lua ✅]")
    end
else
    warn("Failed to fetch script: "..tostring(result))
end

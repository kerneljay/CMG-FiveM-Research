--[[
    Custom Font Loader
    ==================

    FiveM fonts are loaded in two steps:
      1. RegisterFontFile("file-name")
      2. RegisterFontId("font-face-name")

    CMG.getFontId(name) returns the registered ID, or 0 if it is unknown.
]]

local fontFiles = {
    "akrobat",
    "Montserrat-Light"
}

local fontIds = {
    ["Akrobat-Black"] = 0,
    ["Akrobat-Bold"] = 0,
    ["Akrobat-ExtraBold"] = 0,
    ["Akrobat-ExtraLight"] = 0,
    ["Akrobat-Light"] = 0,
    ["Akrobat-Regular"] = 0,
    ["Akrobat-SemiBold"] = 0,
    ["Akrobat-Thin"] = 0,
    ["Montserrat-Light"] = 0
}

CreateThread(function()
    for _, fontFile in pairs(fontFiles) do
        RegisterFontFile(fontFile)
    end

    for fontName in pairs(fontIds) do
        fontIds[fontName] = RegisterFontId(fontName)
    end
end)

function CMG.getFontId(fontName)
    return fontIds[fontName] or 0
end

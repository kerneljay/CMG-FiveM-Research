--[[
    RageUI Sprite Renderer
    ======================

    RenderSprite draws an image from a GTA streamed texture dictionary.

    x/y/width/height are supplied like 1920x1080 UI coordinates and converted
    into GTA's 0.0-1.0 screen coordinate system.
]]

function RenderSprite(
    textureDictionary,
    textureName,
    x,
    y,
    width,
    height,
    heading,
    red,
    green,
    blue,
    alpha
)
    x = (tonumber(x) or 0) / 1920
    y = (tonumber(y) or 0) / 1080
    width = (tonumber(width) or 0) / 1920
    height = (tonumber(height) or 0) / 1080

    if not HasStreamedTextureDictLoaded(
        textureDictionary
    ) then
        RequestStreamedTextureDict(
            textureDictionary,
            true
        )
    end

    DrawSprite(
        textureDictionary,
        textureName,
        x + width * 0.5,
        y + height * 0.5,
        width,
        height,
        heading or 0,
        tonumber(red) or 255,
        tonumber(green) or 255,
        tonumber(blue) or 255,
        tonumber(alpha) or 255
    )
end

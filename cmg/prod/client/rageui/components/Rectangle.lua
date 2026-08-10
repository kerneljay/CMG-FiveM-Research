--[[
    RageUI Rectangle Renderer
    =========================

    RageUI layouts use 1920x1080 pixel-style coordinates, but GTA's DrawRect
    native expects normalised values from 0.0 to 1.0.

    RenderRectangle converts the pixel coordinates, applies default white
    colour values, then draws the rectangle.
]]

function RenderRectangle(
    x,
    y,
    width,
    height,
    red,
    green,
    blue,
    alpha
)
    x = (tonumber(x) or 0) / 1920
    y = (tonumber(y) or 0) / 1080
    width = (tonumber(width) or 0) / 1920
    height = (tonumber(height) or 0) / 1080

    DrawRect(
        x + width * 0.5,
        y + height * 0.5,
        width,
        height,
        tonumber(red) or 255,
        tonumber(green) or 255,
        tonumber(blue) or 255,
        tonumber(alpha) or 255
    )
end

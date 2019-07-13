--- Drawing Functions
--  @module Drawing


----------
-- Current framerate
-- @stat 7
-- @tfield number fps

----------
-- Pause menu x1
-- @stat 12 
-- @tfield int pauseX1

----------
-- Pause menu y1
-- @stat 13
-- @tfield int pauseY1

----------
-- Pause menu x2
-- @stat 14
-- @tfield int pauseX2

----------
-- Pause menu y2
-- @stat 15
-- @tfield int pauseY2

----------
-- Flips the buffer to the screen and waits for the next frame.
-- @function flip

----------
-- Clips the screen to the specified w, h with the top left corner being x,y
-- @function clip
-- @int x The X position to place the clip rectangle
-- @int y The Y position to place the clip rectangle
-- @int w The width of the clip rectangle.
-- @int h The hight of the clip rectangle.


----------
-- Sets the pixel at x, y to colour c
-- @function pset
-- @int x The X to set.
-- @int y The Y to set.
-- @int[opt=pen_colour] col The colour to use.


----------
-- Gets the pixel at x, y
-- @function pget
-- @int x The X position to get.
-- @int y The Y position to get.
-- @treturn int The colour at the given pixel.

----------
-- Sets the pixel at x, y in the sprite sheet to colour c
-- @function sset
-- @int x The X to set.
-- @int y The Y to set.
-- @int[opt=pen_colour] col The colour to use.

----------
-- Gets the pixel at x, y in the spritesheet
-- @function sget
-- @int x The X position to get.
-- @int y The Y position to get.
-- @treturn int The colour at the given pixel.

----------
-- Prints the given string to the screen
-- @function print
-- @string str The string to print.
-- @int[opt=cursor_x] x The X position to print the string.
-- @int[opt=cursor_y] y The Y position to print the string.
-- @int[opt=pen_colour] col The colour to use.

----------
-- Sets the cursor position
-- @function cursor
-- @int x The X position to place the cursor.
-- @int y The Y position to place the cursor.
-- @int[opt] colour The colour to switch to.

----------
-- Sets the pen colour to col
-- @function color
-- @int col The colour to set the pen to.

----------
-- Clears the screen, with an optional colour to clear with.
-- @function cls
-- @int[opt=pen_colour] col The colour to use.

----------
-- Moves the camera to x, y
-- @function camera
-- @int x The X position to move the camera to.
-- @int y The Y position to move the camera to.


----------
-- Creates a hollow rectangle from x1, y1 to x2, y2.
-- @function rect
-- @int x1 The X position to draw from.
-- @int y1 The Y position to draw from.
-- @int x2 The X position to draw to.
-- @int y2 The Y position to draw to.
-- @int[opt=pen_colour] col The colour to use.


----------
-- Creates a filled rectangle from x1, y1 to x2, y2.
-- @function rectfill
-- @int x1 The X position to draw from.
-- @int y1 The Y position to draw from.
-- @int x2 The X position to draw to.
-- @int y2 The Y position to draw to.
-- @int[opt=pen_colour] col The colour to use.

----------
-- Draws a circle of radius r at x, y.
-- @function circ
-- @int x The X position to center the circle at.
-- @int y The Y position to center the circle at.
-- @int r The radious of the cirle.
-- @int[opt=pen_colour] col The colour to use.

----------
-- Draws a filled circle of radius r at x, y.
-- @function circfill
-- @int x The X position to center the circle at.
-- @int y The Y position to center the circle at.
-- @int r The radious of the cirle.
-- @int[opt=pen_colour] col The colour to use.

----------
-- Draws a line from x1, y1 to x2, y2
-- @function line
-- @int[opt=last_x2] x1 The X position to draw from.
-- @int[opt=last_y2] y1 The Y position to draw from.
-- @int x2 The X position to draw to.
-- @int y2 The Y position to draw to.
-- @int[opt=pen_colour] col The colour to use.

----------
-- Sets c1 to c2 in the pallet.
-- @function pal
-- @int c1 The colour you want to change.
-- @int c2 What to change c1 to.
-- @int[opt] p Which pallet to modify.

----------
-- Sets the given colour's transparency bit.
-- @function palt
-- @int col The colour to set the flag on.
-- @bool t The flag's value.

----------
-- Draws sprite n at the given x, y, with optional scaling and flipping
-- @function spr
-- @int n The sprite to draw.
-- @int x The X position to draw it.
-- @int y The Y position to draw it.
-- @int[opt=1] width The sprite's width, defaults to 1 sprite square.
-- @int[opt=1] height The sprite's height, defaults to 1 sprite square.
-- @bool[opt=false] flip_x Flips the sprite along it's X axis.
-- @bool[opt=false] flip_y Flips the sprite along it's Y axis.

----------
-- Stretches a rectangle from the sprite sheet (sx, sy, sw, sh) (in pixels)
-- and draws in rectangle (dx, dy, dw, dh) on the screen.
-- @function sspr
-- @int sx The X position on the sprite sheet to draw from.
-- @int sy The Y position on the sprite sheet to draw from.
-- @int sw The width of the rectangle from the sprite sheet to draw from.
-- @int sh The height of the rectangle from the sprite sheet to draw from.
-- @int dx The X position to draw it.
-- @int dy The Y position to draw it.
-- @int[opt=sw] dw The target's width, defaults to sw.
-- @int[opt=sh] dh The target's height, defaults to sw.
-- @bool[opt=false] flip_x Flips the sprite along it's X axis.
-- @bool[opt=false] flip_y Flips the sprite along it's Y axis.

----------
-- Sets the fill pattern to p
--
-- p is a bitfield in reading order starting from the highest bit. To calculate the value
-- of p for a desired pattern, add the bit values together:
--
--    .-----------------------.
--    |32768|16384| 8192| 4096|
--    |-----|-----|-----|-----|
--    | 2048| 1024| 512 | 256 |
--    |-----|-----|-----|-----|
--    | 128 |  64 |  32 |  16 |
--    |-----|-----|-----|-----|
--    |  8  |  4  |  2  |  1  |
--    '-----------------------'
-- (Source: pico-8.txt distributed with PICO-8)
-- @function fillp
-- @int p The pattern to use.

----------
-- Draws the specified section of the map to the specified section of the screen.
-- @function map
-- @int cell_x The X position of the map to start drawing from.
-- @int cell_y The Y position of the map to start drawing from.
-- @int sx The X position on the screen to start drawing at.
-- @int sy The Y position on the screen to start drawing at.
-- @int cell_w The width of the rectangle to draw, in cells.
-- @int cell_h The height of the rectangle to draw, in cells.
-- @int[opt] layer A bitmap of layers to draw, based on the sprite's flags.
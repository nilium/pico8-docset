--- Devkit input
-- To enable mouse and keyboard input, you can execute poke to the address
-- 0x5F2D with the the value of 1.
-- @module Devkit_Input

----------
-- True if a key is pressed.
-- @stat 30
-- @tfield bool keyPressed

----------
-- Character pressed.
-- @stat 31
-- @tfield string charPressed

----------
-- Mouse X
-- @stat 32
-- @tfield integer mouseX

----------
-- Mouse Y
-- @stat 33
-- @tfield integer mouseY

----------
-- Mouse Buttons
-- @stat 34
-- @tfield integer mouseButtons

----------
-- Mouse wheel.
-- @stat 36
-- @tfield integer mouseWheel

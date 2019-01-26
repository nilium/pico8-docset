--- Input functions
-- Buttons are from 0..5 and are in the following order: left right up down o x
-- @module Input

----------
-- Clipboard contents after user pressed paste.
-- @stat 4

----------
-- Checks if i is down as of the last frame, for player p/
-- @function btn
-- @int i The button to check.
-- @int[opt=1] p The player to check.

----------
-- Checks if the button has been "pressed" -- gone down then up.
-- @function btnp
-- @int i The button to check.
-- @int[opt=1] p The player to check.
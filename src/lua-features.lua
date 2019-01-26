--- Lua Features
-- @module Lua

----------
-- Set a metatable..
-- @function setmetatable
-- @tab t The table to set the metatable on.
-- @tab mt The metatable table to set on the table.

----------
-- Gets the active metatable.
-- @function getmetatable
-- @tab t The table to get the metatable from.
-- @treturn table The given table's metatable.

----------
-- Create a coroutine for function f.
-- @function cocreate
-- @func f The function to run for this coroutine.


----------
-- Resumes a coroutine.
-- @function coresume
-- @thread c The coroutine to resume.


----------
-- Get the status of a coroutine.
--
-- The status returned will be one of the following:
-- - "running"
-- - "suspended"
-- - "dead"
--
-- @function costatus
-- @thread c The coroutine to inspect.
-- @treturn string The coroutine's status.

----------
-- Yield the current coroutine.
-- @function yield
-- @return The values given in coresume when resumed again.
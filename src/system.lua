--- System Functions
-- @module System

----------
-- Memory usage.
-- @stat 0
-- @tfield int memoryUsage

----------
-- CPU Usage since last flip.
-- @stat 1
-- @tfield int cpuUsage

----------
-- UTC Time: Year
-- @stat 80
-- @tfield int utcYear

----------
-- UTC Time: Month
-- @stat 81
-- @tfield int utcMonth

----------
-- UTC Time: Day
-- @stat 82
-- @tfield int utcDay

----------
-- UTC Time: Hour
-- @stat 83
-- @tfield int utcHour

----------
-- UTC Time: Minute
-- @stat 84
-- @tfield int utcMinute

----------
-- UTC Time: Second
-- @stat 85
-- @tfield int utcSecond

----------
-- Local Time: Year
-- @stat 90

----------
-- Local Time: Month
-- @stat 91

----------
-- Local Time: Day
-- @stat 92

----------
-- Local Time: Hour
-- @stat 93

----------
-- Local Time: Minute
-- @stat 94

----------
-- Local Time: Second
-- @stat 95

----------
-- Returns statistics.
-- @function stat
-- @int stat The statistic to get.

----------
-- Runs the specified "external command"
-- @function extcmd
-- @string cmd The command to run.

----------
-- Loads the specified cartridge.
-- @function load
-- @string filename The cartridge file to lod.
-- @string[opt] breadcrumb The menu item to add to the pause menu to undo this load.
-- @string[opt] param The param which will be returned by stat(6)

----------
-- Saves the current cartridge.
-- @function save
-- @string filename The filename to save the cartridge as.

----------
-- Stops the cart, optionally printing msg.
-- @function stop
-- @string[opt] msg The message to prin.

----------
-- Prints a string to the host console, or to a file.
-- 
-- if filename is `@clip` it will write to the host system's clipboard,
-- and force overwrite to be true.
-- @function printh
-- @string msg The message to print.
-- @string[opt] filename The file to write to.
-- @bool[opt=false] overwrte True to overwrite, false to append.

----------
-- Adds or removes a new menu item to the pause menu.
-- Not passing label and callback removes the item from the menu.
-- @function menuitem
-- @int index The index of the item to add (1..5)
-- @string[opt] label The label of the item to add.
-- @func[opt] callback The callback function.

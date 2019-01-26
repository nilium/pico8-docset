--- Memory
-- Memory Layout:
-- 0x0    gfx
-- 0x1000 gfx2/map2 (shared)
-- 0x2000 map
-- 0x3000 gfx_props
-- 0x3100 song
-- 0x3200 sfx
-- 0x4300 user data
-- 0x5e00 persistent cart data (256 bytes)
-- 0x5f00 draw state
-- 0x5f40 hardware state
-- 0x5f80 gpio pins (128 bytes)
-- 0x6000 screen (8k)

-- User data has no particular meaning and can be used for anything via memcpy(), peek() & poke().
-- Persistent cart data is mapped to 0x5e00..0x5eff but only stored if cartdata() has been called.
-- Colour format (gfx/screen) is 2 pixels per byte: low bits encode the left pixel of each pair.
-- Map format is one byte per cel, where each byte normally encodes a sprite index.
-- @module Memory

----------
-- The third value passed to <load>.
-- @stat 6
-- @tfield string loadParam

----------
-- Current breadcrumb label
-- @stat 100
-- @tfield string breadcrumbLabel

----------
-- Reads from the specified address
-- @function peek
-- @int addr The address to read from.

----------
-- Writes to the specified address.
-- @function poke
-- @int addr The address to write to.
-- @int val The value to write, must be 0..255

----------
-- Reads from the specified address..address+4
-- @function peek4
-- @int addr The address to read from.

----------
-- Writes to the specified address..address+4.
-- @function poke4
-- @int addr The address to write to.
-- @int val The value to write, must be 0..2^32

----------
-- Copies len memory from src to dest
-- @function memcpy
-- @int dest The address to copy the memory to.
-- @int src The address to copy memory from.
-- @int len The number of bytes to copy.

----------
-- Load len bytes from src on the cart to dest in-memory.
-- @function reload
-- @int dest The address to copy the memory to.
-- @int src The address to copy memory from.
-- @int len The number of bytes to copy.
-- @string[opt] The filename to read from, defaults to the active cart.

----------
-- Load len bytes from src in-memory to dest on a cart.
-- @function cstore
-- @int dest The address to copy the memory to.
-- @int src The address to copy memory from.
-- @int len The number of bytes to copy.
-- @string[opt] The filename to write to, defaults to the active cart.


----------
-- Sets len bytes to val, starting at dest.
-- @function memset
-- @int dest The base address to start at.
-- @int val The value to write, must be 0..255
-- @int len The number of bytes to write.
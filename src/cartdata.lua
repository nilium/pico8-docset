--- Cartridge data.
-- @module Cartdata

-----------
-- Set the data storage ID.
-- @function cartdata
-- @string id The ID to use.

-----------
-- Gets data at the specified index.
-- @function dget
-- @int index The slot of the cart data to get (0..63)
-- @treturn number The value of the slot.

-----------
-- Sets data at the specified index.
-- @function dset
-- @int index The slot of the cart data to set (0..63)
-- @number val The value to write.
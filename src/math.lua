--- Math functions.
-- @module Math

----------
-- Returns the higher value of x and y.
-- @function max
-- @number x The first value.
-- @number y The second value.
-- @treturn number The higher value.

----------
-- Returns the lower value of x and y.
-- @function min
-- @number x The first value.
-- @number y The second value.
-- @treturn number The lower value.

----------
-- Returns the v clamped between x and y.
-- @function mid
-- @number v The value to clamp.
-- @number x The lower value.
-- @number y The higher value.
-- @treturn number The clamped value.

----------
-- Rounds x down to the nearest integer.
-- @function flr
-- @number x The number to round
-- @treturn int The rounded value.


----------
-- Rounds x up to the nearest integer.
-- @function ceil
-- @number x The number to round
-- @treturn int The rounded value.

----------
-- Mathamatical routine sin
-- @function sin
-- @number x
-- @treturn number

----------
-- The mathamatical routine cosine
-- @function cos
-- @number x
-- @treturn number


----------
-- Converts dx, dy to an angle from 0..1
-- @function atan2
-- @number dx
-- @number dy
-- @treturn number The angle between 0..1

----------
-- Returns the square root
-- @function sqrt
-- @number x
-- @treturn number Square root of x

----------
-- Returns the absolute value of x
-- @function abs
-- @number x
-- @treturn number The absolute value of x.

----------
-- Seed the random number generator with seed.
-- @function srand
-- @number seed The RNG seed to use.

----------
-- Get a random number from 0..x
-- @function rnd
-- @number x The max value to return
-- @treturn number A random number from 0..x


----------
-- Binary or
-- @function bor
-- @int x
-- @int y


----------
-- Binary xor
-- @function bxor
-- @int x
-- @int y


----------
-- Binary not
-- @function bnot
-- @int x
-- @int y

----------
-- Rotate left
-- @function rotl
-- @int v value to rotate
-- @int n Number of bits to rotate by.

----------
-- Rotate right
-- @function rotr
-- @int v value to rotate
-- @int n Number of bits to rotate by.


----------
-- Shift left
-- @function shl
-- @int v value to shift
-- @int n Number of bits to shift by.

----------
-- Arithmitic Shift right
-- @function shr
-- @int v value to shift
-- @int n Number of bits to shift by.

----------
-- Logical Shift right
-- @function lshr
-- @int v value to shift
-- @int n Number of bits to shift by.
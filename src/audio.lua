--- Audio functions
-- @module Audio

----------
-- Index of current SFX playing on channel 0
-- @stat 16
-- @tfield integer currentSFX0

----------
-- Index of current SFX playing on channel 1
-- @stat 17
-- @tfield integer currentSFX1

----------
-- Index of current SFX playing on channel 2
-- @stat 18
-- @tfield integer currentSFX2

----------
-- Index of current SFX playing on channel 3
-- @stat 19
-- @tfield integer currentSFX3

----------
-- Current note on channel 0
-- @stat 20
-- @tfield integer currentNote0

----------
-- Current note on channel 1
-- @stat 21
-- @tfield integer currentNote1

----------
-- Current note on channel 2
-- @stat 22
-- @tfield integer currentNote2

----------
-- Current note on channel 3
-- @stat 23
-- @tfield integer currentNote3

----------
-- Currently playing pattern index.
-- @stat 24
-- @tfield integer currentPattern

----------
-- Total patterns played.
-- @stat 25
-- @tfield integer totalPatterns

-----------
-- Plays the given Sound Effect.
-- @function sfx
-- @int n The given sfx to play.
-- @int[opt=1] channel The channel to play on.
-- @int[opt=0] offset The note offset to play from.
-- @int[opt=32] length The number of notes to play.

-----------
-- Plays music or stops a music track
-- @function music
-- @int n The track to start or stop, or -1 to stop it all.
-- @int[opt=0] fade_len The fade length in ms
-- @int[opt=0] channel_mask The channel mask to reserve for this track.

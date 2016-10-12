
##| dir = "/Users/sfradkin/code/samples/dbass"

##| sample dir, 7, amp: 3

# Euclidean beats using the spread function

use_bpm 30

n =  ring(:b3, :c4, :c5)

##| live_loop :test do
##|   play n.tick, on:  spread(5, 8).look, release: (1.0/8)
##|   sleep (1.0/8)
##| end

##| live_loop :beats do
##|   sample :bd_haus if  spread(5, 8).tick
##|   sleep (1.0/8)
##| end

# onset detects a drum kick
# pick will pick one at random, or use a number

##| live_loop :foo do
##|   sample :loop_amen, onset: rrand_i(0, 20)
##|   sleep 0.125
##| end

# if you use the use_random_seed function
# then pick will pick different onsets in the loop

##| live_loop :foo do
##|   use_random_seed 23
##|   8.times do
##|     sample :loop_amen, onset: pick
##|     sleep 0.125
##|   end
##| end

# add an envelope to limit the length of what's played
# so it sounds more percussive

live_loop :foo do
  use_random_seed 50
  8.times do
    sample :loop_amen, onset: pick, sustain: 0, release: 0.1
    sleep 0.125
  end
end

##| * Ability to sync threads (sharing data and time)
##| * Extremely flexible timing model (each live loop can have its own BPM)
##| * Possible to extend (write your own functions, design your own synths with SuperCollider)
##| * Multi-channel audio in via the `:sound_in` synth:

##| live_loop :foo do
##|   with_fx :reverb do
##|     synth :sound_in, sustain: 4, attack: 0, release: 0
##|   end
##|   sleep 4
##| end

##| * Sonic Pi already accepts incoming OSC (but is currently experimental and undocumented)
##| * General (well-timed) MIDI/OSC support is being actively developed and working prototypes exist.
##| * External editors can be connected via an OSC API
##| * Multi-channel audio is in development



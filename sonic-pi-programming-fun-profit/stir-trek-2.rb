# Hello Stir Trek!
# This is file 2 of 5
# You can find it at
# https://github.com/sfradkin/presentations/tree/master/sonic-pi-programming-fun-profit
# after the conference

##| Chords and scales
##| Play chord :c4, :major, num_octaves: 3
##| Or you can store the chord in a variable

##| play chord :c4, :major, num_octaves: 3

##| r = chord :c4, :major, num_octaves: 3
##| puts r

##| Scales are similar: scale :c4, :major, num_octaves: 3

##| play scale :c4, :major

##| Rings
##| Both chord and scale functions return a ring.
##| A ring is just a circular array of notes
##| This gives us more functionality
##| Look, tick, choose
##| Sonic Pi has the concept of a tick
##| Tick is just an increasing counter
##| You can also have multiple named ticks
##| So, you can do things like:
##| n = (ring :c3, :c4, :c5)
##| 6.times do
##|   play n.tick
##|   sleep 0.5
##| End
##| So tick returns an increasing number which is then used as the index to the ring array
##| You can use the look function to use the current value of tick without incrementing the counter

r = chord :c4, :major, num_octaves: 3

use_random_seed 5656

6.times do
  play r.choose, release: 0.25
  sleep 0.25
end

##| The choose function will choose an index at random
##| Some words about random
##| You’ll notice that if you run some sonic pi code that uses choose or another random function that whatever you coded sounds the same every execution.
##| That’s because sonic pi uses the same random seed each time and restarts from the beginning of the random number stream for that seed
##| To be a little more random, you want to use the use_random_seed <integer> function to change the seed every so often

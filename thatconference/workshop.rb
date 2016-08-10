# Hi That Conference!

# Let's learn some Sonic Pi!
# Sonic Pi is fun for kids AND adults!

# http://sonic-pi.net

# Check out my website http://www.fradkin.com
# Contact me via Twitter: @sfradkin
# or email: scott@fradkin.com

# Let's get to it!

# Let's play some notes

#play :eb4

# How can we make the notes longer?

# play :c4, release: 0.1

# Let's play some samples

#sample :ambi_choir, amp: 3

# We can have some fun changing the speed of samples

#sample :ambi_choir, amp: 3, rate: -1

#sample :loop_amen, rate: -4

############# Take a few minutes to play around ###########

# Now, let's sleep
##| use_bpm 30

##| play :c4
##| sleep 1
##| play :d4

# How can we figure out how long a sample is to loop it?

##| use_sample_bpm :loop_amen, num_beats: 4

##| 4.times do
##|   sample :loop_amen
##|   sleep 4
##| end

# Stretch the beats

############# Take another few minutes to play around #######

# Plug in the chords

# play chord :c4, :minor, num_octaves: 4

# Scale a mountain

# play scale :c4, :minor, num_octaves: 2

# Ring around the rosy

r = chord :c4, :minor, num_octaves: 4

# We can do some fun things with tick, look, and choose

##| 16.times do
##|   play r.tick
##|   sleep 0.25
##| end

# or

##| 16.times do
##|   tick
##|   play r.look
##|   sleep 0.25
##| end

# or

##| 16.times do
##|   play r.choose
##|   sleep 0.25
##| end

############# Experiment with what you've learned #########

# Now let's do some live looping

##| live_loop :cool_music do
##|   with_fx :flanger do
##|     with_fx :echo do
##|       with_fx :bitcrusher do
##|         with_synth :prophet do
##|           play :g4, release: 2
##|           sleep 1
##|           play :d4, release: 2
##|           sleep 1
##|           play :e4, release: 2
##|           sleep 1
##|         end
##|       end
##|     end
##|   end
##| end

##| live_loop :drums do
##|   sample :bass_hit_c, amp: 5
##|   sleep 0.5
##| end

# Change up the synths

# Add some FX fun

############# Create some cool tracks! ################

# Have fun with different synth and fx arguments

# use rrand and rrand_i

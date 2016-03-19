# This code is presented under an MIT License: https://opensource.org/licenses/MIT
# Attribution is optional, but appreciated.  Please give attribution to Scott Fradkin, http://www.fradkin.com

###########################

##| use_synth :tb303

##| play :c4

##| sleep 1

##| use_synth :pretty_bell

##| play :c4


##| with_synth :prophet do
##|   play :c4
##| end


##| with_synth :prophet do
##|   play :c4, release: 4
##| end


##| with_synth :prophet do
##|   4.times do
##|     play :c4, release: 2, cutoff: 100, amp: 6
##|     sleep 2
##|   end
##| end


##| with_synth :prophet do
##|   4.times do
##|     play :c4, release: 2, cutoff: rrand_i(50, 100), amp: 2
##|     sleep 2
##|   end
##| end

# sample :loop_amen

#sample :loop_amen, beat_stretch: 4

#sample :loop_amen, rate: 0.5

#sample :loop_amen, rpitch: 2

##| 4.times do
##|   sample :loop_amen
##|   sleep sample_duration :loop_amen
##| end

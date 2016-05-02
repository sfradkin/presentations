# This code is presented under an MIT License: https://opensource.org/licenses/MIT
# Attribution is optional, but appreciated.  Please give attribution to Scott Fradkin, http://www.fradkin.com

###########################

#play chord :e4, :minor


#play chord :e4, :minor, num_octaves: 3


#play scale :c4, :major, num_octaves: 3



#play (ring :c4, :d4, :e4)


r = (ring :c4, :d4, :e4)

##| 5.times do
##|   puts tick, r.look
##| end


##| 6.times do
##|   tick
##|   play r.look
##|   sleep 0.5
##| end

##| 3.times do
##|   play r.tick
##|   sleep 0.5
##| end

##| use_random_seed 4675765876

##| 3.times do
##|   play r.choose
##|   sleep 0.5
##| end


##| 7.times do
##|   play r.choose
##|   sleep 0.5
##| end

# Let's take a snack break!

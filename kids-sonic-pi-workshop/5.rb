# This code is presented under an MIT License: https://opensource.org/licenses/MIT
# Attribution is optional, but appreciated.  Please give attribution to Scott Fradkin, http://www.fradkin.com

###########################

#with_fx :echo do

##| 4.times do

##|   play :c4, release: 2
##|   sleep 2
##|   play :fs4, release: 2
##|   sleep 2
##| end

#end


##| with_fx :echo, phase: 0.15 do

##|   4.times do

##|     play :c4, release: 2
##|     sleep 2
##|     play :fs4, release: 2
##|     sleep 2
##|   end

##| end


##| with_fx :bitcrusher, bits: 4 do
##|   with_fx :echo, phase: 0.5 do

##|     4.times do

##|       play :c4, release: 2
##|       sleep 2
##|       play :fs4, release: 2
##|       sleep 2
##|     end

##|   end
##| end

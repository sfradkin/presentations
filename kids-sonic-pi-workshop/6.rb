# This code is presented under an MIT License: https://opensource.org/licenses/MIT
# Attribution is optional, but appreciated.  Please give attribution to Scott Fradkin, http://www.fradkin.com

###########################

r = (ring :c4, :fs4, :a5, :d3, :gs4)

##| in_thread name: :notes do
##|   use_synth :tb303
##|   8.times do
##|     play r.choose, release: 0.25
##|     sleep 0.25
##|   end
##| end

##| in_thread name: :beats do
##|   4.times do
##|     sample :bd_haus, amp: 4
##|     sleep 0.5
##|   end
##| end

############################

##| live_loop :notes do
##|   use_synth :tb303
##|   8.times do
##|     play r.choose, release: 0.25
##|     sleep 0.25
##|   end
##| end

##| live_loop :beats, sync: :notes do
##|   4.times do
##|     sample :bd_haus, amp: 2
##|     sleep 0.5
##|   end
##| end


##| live_loop :snare, sync: :notes do
##|   4.times do
##|     sleep 0.25
##|     sample :drum_snare_soft, amp: 5
##|     sleep 1
##|   end
##| end

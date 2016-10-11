# Hello MakerFaireMilwaukee!
# This is file 4 of 5
# You can find it at
# https://github.com/sfradkin/presentations/tree/master/makerfairemke
# after the conference

##| In_thread
##| So how do we run multiple chunks of coded music at the same time?
##| If we’re composing music we can use in_thread name: :threadname do
##| This creates a block that will run as a separate thread

##| in_thread name: :drums do
##|   4.times do
##|     sample :bd_haus, amp: 2
##|     sleep 0.5
##|   end

##| end

##| r = chord :d3, :minor, num_octaves: 3

##| in_thread name: :melody do
##|   8.times do
##|     play r.tick, release: 0.25
##|     sleep 0.25
##|   end
##| end

##| Live_loop
##| But, if we want a loop to run indefinitely we can use live_loop :loopname do
##| Live loops also allow you to modify the code and then press Run again
##| The loop will redefine itself and then execute the new code immediately after the prior loop is finished
##| This is live coding


##| live_loop :drums do
##|  sample :bd_haus, amp: 2
##|  sleep 0.5
##| end

##| r = chord :d3, :minor, num_octaves: 3

##| live_loop :melody, delay: 1.25 do
##|  play r.tick, release: 0.5
##|  sleep 0.5
##|end



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


live_loop :drums do
  use_bpm 20
  sample :bd_haus, amp: 2
  sleep 1
end

r = chord :ds4, :minor, num_octaves: 3

live_loop :melody, sync: :drums do
  use_bpm 60
  play r.tick, release: 0.25
  sleep 0.25
end

# if you put use_bpm inside a live loop, then each
# loop can be run at a different tempo

# you can use rrand or rrand_i to generate random values

# use delay or sync on the live loop



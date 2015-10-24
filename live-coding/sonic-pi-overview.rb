##########################
# Milwaukee Code Camp    #
# 10-24-2015             #
# Sonic Pi Overview      #
# http://sonic-pi.net    #
#                        #
# Have fun coding music! #
##########################

# each section has comment do/end surrounding the code that can be changed to
# uncomment do/end in order for the code to evaluate

# Press the Help button to view the excellent tutorial
# and documentation for everything built into Sonic Pi

# play some notes with a sleep in between
comment do
  play :c4
  sleep 1
  play :e4
end

# example of a loop playing a chord
comment do
  8.times do
    play chord :ds3, 'minor'
    sleep 0.75
  end
end

# here we contstruct a ring of notes and "tick" through them
comment do
  8.times do
    play (ring :e3, :d3, :a3, :ds3).tick
    sleep 0.75
  end
end

# change the random seed so that functions like "choose" or "rrand"
# pick different values
use_random_seed 654

# example of using the "choose" function to grab random notes from the ring
comment do
  8.times do
    play (ring :e3, :d3, :a3, :ds3).choose
    sleep 0.75
  end
end

# the "use_synth" function can be used to change the current synth
#use_synth :tb303

# "with_synth" blocks can be used to modify the synth only for the code within
# the block
# use "with_fx" blocks to apply effects, they can be stacked within each other
comment do
  with_fx :bitcrusher do
    with_fx :slicer do
      with_synth :prophet do
        8.times do
          play (scale :d4, :major).tick, cutoff: rrand_i(60, 130)
          sleep 0.75
        end
      end
    end
  end
end

# use "live_loop" blocks to run different threads
# these blocks can be modified while music is playing
# press the Run button to re-evaluate the code and hear the changes
# here we're playing a bass drum kick sample over and over
comment do
  live_loop :cool_beat do
    8.times do
      sample :bd_haus, amp: 6, cutoff: 70
      sleep 0.5
    end
  end
end

# Another live_loop that plays a note over and over
# shows using the "sync" function to sync the :synthy loop
# with the :cool_beat loop
# use "sync" if your loops start to diverge in time after modification
comment do
  live_loop :synthy do
    sync :cool_beat
    play :c3
    sleep 1
  end
end

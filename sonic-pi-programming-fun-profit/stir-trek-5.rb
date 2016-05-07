# Hello Stir Trek!
# This is file 5 of 5
# You can find it at
# https://github.com/sfradkin/presentations/tree/master/sonic-pi-programming-fun-profit
# after the conference

##| Putting things together by live coding
##| Bassline
##| Drum track
##| Melody
##| Embellish/fx

live_loop :drums do
  sample :bd_haus, amp: 2
  sleep 0.5
end

live_loop :bassline do
  with_fx :slicer, phase: 0.25, pulse_width: 0.25 do
    with_synth :prophet do
      play :c3, release: 4
      sleep 4
    end
  end
end

live_loop :cowbell do
  sample :drum_cowbell
  sleep 1
end

live_loop :stuff do
  with_synth :pnoise do
    play :c5, release: 0.1, on: spread(5, 8).tick
    sleep 0.5
  end
end



# Welcome to Sonic Pi v2.9

diamond=(ring :a4,:b4,:g5, :c4)
4.times do
  play diamond.tick
  sleep 1
end
dragon=(ring :a4,:b4,:c4,:f4)
8.times do
  play dragon.tick
  sleep 0.5
end
in_thread name: :beats do
  screams=(ring :a8,:g8,:c7,:f8)
  with_fx :compressor do
    with_synth :subpulse do
      6.times do
        play screams.tick
        sleep 0.5
      end
    end
  end
end
in_thread name: :note do
  with_fx :distortion do
    r = (ring :a8,:g8,:c7,:f8)
    with_synth :supersaw do
      6.times do
        play r.tick
        sleep 1
      end
    end
  end
end
live_loop :bassline do
  with_fx :echo, phase: 0.1 do
    with_fx :reverb, room: 0.8 do
      with_synth :tb303 do
        16.times do
          play chord(:c2, :minor).choose, release: 0.125, cutoff: rrand_i(40, 120), res: rrand(0.05, 0.5)
          sleep 0.15
        end

        16.times do
          play chord(:a2, :minor).choose, release: 0.125, cutoff: rrand_i(40, 120), res: rrand(0.05, 0.5)
          sleep 0.15
        end

        16.times do
          play chord(:fs2, :minor).choose, release: 0.125, cutoff: rrand_i(40, 120), res: rrand(0.05, 0.5)
          sleep 0.15
        end

        16.times do
          play chord(:a3, :minor).choose, release: 0.125, cutoff: rrand_i(40, 120), res: rrand(0.05, 0.5)
          sleep 0.15
        end
      end
    end
  end
end

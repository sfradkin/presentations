with_fx :distortion do
  with_fx :bitcrusher do
    with_fx :band_eq do
      with_fx :bitcrusher, bits: 4 do
        8.times do
          8.times do
            play chord :e4, :minor
            sleep 0.25
          end


          8.times do
            play chord :es4, :minor
            sleep 0.25
          end

          8.times do
            play chord :e4, :minor
            sleep 0.25
          end

          8.times do
            play chord :es4, :minor
            sleep 0.25
          end

          sleep 1
        end

        8.times do
          play chord :es4, :minor
          sleep 0.25
        end

        8.times do
          play chord :e4, :minor
          sleep 0.25
        end

        5.times do
          play chord :es4, :minor
          sleep 0.25
        end

        sleep 0.25
      end
    end
  end
end
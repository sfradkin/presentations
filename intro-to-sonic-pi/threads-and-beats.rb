in_thread do
  sample :bd_haus
  sleep 0.5
  sample :bd_haus
  sleep 0.5
  sample :bd_haus
  sleep 0.5
  sample :bd_haus
  sleep 0.5
end

in_thread(name: :hihats) do
  sample :drum_cymbal_closed
  sleep 0.125
  sample :drum_cymbal_closed
  sleep 0.125
  sample :drum_cymbal_closed
  sleep 0.125
  sample :drum_cymbal_closed
  sleep 0.125
  sample :drum_cymbal_closed
  sleep 0.125
  sample :drum_cymbal_closed
  sleep 0.125
  sample :drum_cymbal_closed
  sleep 0.125
  sample :drum_cymbal_closed
  sleep 0.125
  sample :drum_cymbal_closed
  sleep 0.125
  sample :drum_cymbal_closed
  sleep 0.125
  sample :drum_cymbal_closed
  sleep 0.125
  sample :drum_cymbal_closed
  sleep 0.125
  sample :drum_cymbal_closed
  sleep 0.125
  sample :drum_cymbal_closed
  sleep 0.125
  sample :drum_cymbal_closed
  sleep 0.125
  sample :drum_cymbal_closed
  sleep 0.125
end

in_thread do
  play :c4
  sleep 0.5
  play :c4
  sleep 0.5
  play :g4
  sleep 0.5
  play :g4
  sleep 0.5
  play :a4
  sleep 0.5
  play :a4
  sleep 0.5
  play :g4
  sleep 1
end

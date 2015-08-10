live_loop :bassdrum do
  sample :bd_haus
  sleep 0.5
  sample :bd_haus
  sleep 0.5
  sample :bd_haus
  sleep 0.5
  sample :bd_haus
  sleep 0.5
  sample :bd_haus, amp: 2
  sleep 0.15
  sample :bd_haus
  sleep 0.35
  sample :bd_haus
  sleep 0.5
  sample :bd_haus
  sleep 0.5
  sample :bd_haus
  sleep 0.5
end

live_loop :twinkle do
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

live_loop :hihats do
  sample :drum_cymbal_closed, amp: 0.8
  sleep 0.125
  sample :drum_cymbal_closed, amp: 0.8
  sleep 0.125
  sample :drum_cymbal_closed, amp: 0.8
  sleep 0.125
  sample :drum_cymbal_closed, amp: 0.8
  sleep 0.125
  sample :drum_cymbal_closed, amp: 0.8
  sleep 0.125
  sample :drum_cymbal_closed, amp: 0.8
  sleep 0.125
  sample :drum_cymbal_closed, amp: 0.8
  sleep 0.125
  sample :drum_cymbal_closed, amp: 0.8
  sleep 0.125
  sample :drum_cymbal_closed, amp: 0.8
  sleep 0.125
  sample :drum_cymbal_closed, amp: 0.8
  sleep 0.125
  sample :drum_cymbal_closed, amp: 0.8
  sleep 0.125
  sample :drum_cymbal_closed, amp: 0.8
  sleep 0.125
  sample :drum_cymbal_closed, amp: 0.8
  sleep 0.125
  sample :drum_cymbal_closed, amp: 0.8
  sleep 0.125
  sample :drum_cymbal_closed, amp: 0.8
  sleep 0.125
  sample :drum_cymbal_closed, amp: 0.8
  sleep 0.125
end

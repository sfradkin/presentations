# Hello CodeStock!
# This is file 1 of 5
# You can find it at
# https://github.com/sfradkin/presentations/tree/master/codestock
# after the conference

##| Overview of the Sonic Pi
## environment, especially the prefs and help

##| Play (midi note number or note + octave)
##| Play 60
##| The numbers are midi notes

##| play 60

##| You can also use: play :c4
##| Symbols for notes + octave
##| Use ‘s’ for sharps or ‘b’ for flats, :cs4
##| or :cb4

##| play :cb4

##| Manipulate the note length with :release
##| Lots of other options based upon the synth being used

##| play :c4, release: 0.1

##| Sample (basic samples)
##| Sample :bd_haus

##| sample :bd_haus, amp: 2

##| Lots of built in samples for drums, ambient sounds, some loops

##| sample :ambi_choir

##| Sample manipulation with :rate

##| sample :loop_amen, rate: -1

##| Sleep
##| If we try to play 2 notes back to back it doesn’t quite work right
##| They play at the same time
##| To get space in between things we use: sleep

##| use_bpm 73

##| play :c4
##| sleep 1
##| play :d4

##| Sleep 1
##| Sleeps for one beat
##| Numbers for lengths of things is beats, not actual time
##| This makes it easier to use different tempos

##| By default Sonic Pi uses 60bpm
##| Can change using: use_bpm 45

##| Or, if you have a loop you want to base the tempo on
##| use: use_sample_bpm :loop_amen
##| You can even choose the number of beats the sample represents

##| use_sample_bpm :loop_amen, num_beats: 4

##| 4.times do
##|  sample :loop_amen
##|  sleep 4
##| end

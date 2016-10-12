# Hello ICLC!

# My name is Scott Fradkin
# You can find my stuff at http://www.fradkin.com

# Sam Aaron couldn't be here, but he's here in spirit
# He offers everyone free cake and hugs if you're ever in Cambridge

# Please download a Sonic Pi 2.11 Beta from:
# * Mac: http://sonic-pi.net/files/tmp/sp211-beta.zip
# * Win: http://sonic-pi.net/files/tmp/sp211-win-beta4.zip
# Sorry, there is no Linux Beta build at this time :(
# However, Sonic Pi 2.11 will be released next week! :)

# Sonic Pi has some philosophical and design goals:
# * All features should work seamlessly together
# * No feature is added unless it is simple to teach to a 10 year old child
# * Designed to be simple to read - both for pupils in classrooms and audiences in nightclubs
# * Fully deterministic behaviour (i.e. completely repeatable)
# * Sonic Pi aims to demystify live coding (and coding in general)

##| Overview of the Sonic Pi
## environment, especially the prefs and help

##| Play (midi note number or note + octave)
##| Play 60
##| The numbers are midi notes

##| play 70.765

##| You can also use: play :c4
##| Symbols for notes + octave
##| Use ‘s’ for sharps or ‘b’ for flats, :cs4
##| or :cb4

##| play :cb4

##| Manipulate the note length with :release
##| Lots of other options based upon the synth being used

##| play :c4, release: 3

##| Sample (basic samples)
##| Sample :bd_haus

##| sample :bd_haus, amp: 3

##| Lots of built in samples for drums, ambient sounds, some loops

##| sample :ambi_choir

##| Sample manipulation with :rate

##| sample :loop_amen, rate: -1

##| Sleep
##| If we try to play 2 notes back to back it doesn’t quite work right
##| They play at the same time
##| To get space in between things we use: sleep

##| use_bpm 180

##| play :c4
##| sleep 1
##| play :e4

##| use_bpm 90

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

use_sample_bpm :loop_amen, num_beats: 4

4.times do
  sample :loop_amen
  sleep 4
end












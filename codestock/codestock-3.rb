# Hello CodeStock!
# This is file 3 of 5
# You can find it at
# https://github.com/sfradkin/presentations/tree/master/codestock
# after the conference


##| With all of that you can create some pretty impressive stuff, but how about some more?
##| With_synth
##| The default synth in sonic pi is the :beep synth
##| It’s ok, but maybe you want something different
##| Use_synth :synthname makes that synth take affect for all subsequent code unless changed
##| With_synth is a block in which the synth chosen takes effect for everything inside the block
##| Many built in synths
##| Each synth has many options to modify, read the docs

##| with_synth :dsaw do

##|   play :c4
##|   sleep 1
##|   play :e4

##| end

##| With_fx
##| With_fx is a block in which the named fx effects the code within the block
##| Many built in fx
##| Can layer block upon block upon block for chained FX
##| Check the documentation for the options on each FX

##| with_fx :bitcrusher, bits: 4 do
##|  with_fx :reverb, room: 1 do
##|    with_fx :slicer, phase: 0.2, pulse_width: 0.75 do
##|      with_synth :dsaw do
##|        play :c4, release: 3
##|        sleep 1
##|        play :e4, release: 3
##|      end
##|    end
##|  end
##| end

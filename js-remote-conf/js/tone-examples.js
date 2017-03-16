var osc1;
var osc2;
var osc4;
var osc5;
var osc6;

var env2;

var synth3;
var synth7;
var synth8;
var synthRepeat;
var synthPat;
var synthPart;
var synthSeq;

var lfo6;

var crush7;

var tremolo8;

var id;

var thePattern;
var thePart;
var theSequence;

Tone.Transport.start();

function createOsc1() {
  osc1 = new Tone.OmniOscillator('a3', 'sine');
  osc1.toMaster();
}

function startOsc1() {
  osc1.start();
}

function stopOsc1() {
  osc1.stop();
}

function cleanupOsc1() {
  osc1.dispose();
}

function createNoStartOsc2() {
  osc2 = new Tone.OmniOscillator('a3', 'sine');
  env2 = new Tone.AmplitudeEnvelope();

  osc2.connect(env2);
  env2.toMaster();
}

function startOsc2() {
  osc2.start();
}

function createOsc2() {
  osc2 = new Tone.OmniOscillator('a3', 'sine');
  env2 = new Tone.AmplitudeEnvelope();

  osc2.connect(env2);
  env2.toMaster();

  osc2.start();
}

function triggerOsc2(noteLength) {
  env2.triggerAttackRelease(noteLength);
}

function cleanupOsc2() {
  osc2.stop();
  env2.dispose();
  osc2.dispose();
}

function createSynth3() {
  synth3 = new Tone.Synth({oscillator: { type: 'sine' } });

  synth3.toMaster();
}

function triggerSynth3(note, noteLength) {
  synth3.triggerAttackRelease(note, noteLength);
}

function cleanupSynth3() {
  synth3.dispose();
}

function createOsc4() {
  osc4 = new Tone.OmniOscillator('a3', 'sine');
  osc4.toMaster();
  osc4.start();
}

function changeFreqOsc4(freq, time) {
  osc4.frequency.setValueAtTime(freq, '+' + time);
}

function cleanupOsc4() {
  osc4.stop();
  osc4.dispose();
}

function createOsc5() {
  osc5 = new Tone.OmniOscillator('a3', 'sine');
  osc5.toMaster();
  osc5.start();
}

function changeFreqOsc5(freq, time) {
  osc5.frequency.exponentialRampToValue(freq, time);
}

function cleanupOsc5() {
  osc5.stop();
  osc5.dispose();
}

function createOsc6() {
  osc6 = new Tone.OmniOscillator('a3', 'sine');
  osc6.toMaster();

  lfo6 = new Tone.LFO('1hz', Tone.Frequency('a3').toFrequency(), Tone.Frequency('a4').toFrequency());

  lfo6.connect(osc6.frequency);

  osc6.start();
  lfo6.start();
}

function changeLfo6Freq(freq) {
  lfo6.frequency.setValueAtTime(freq, '+0.5');
}

function cleanupOsc6() {
  lfo6.stop();
  osc6.stop();
  lfo6.dispose();
  osc6.dispose();
}

function createSynth7() {
  synth7 = new Tone.Synth({oscillator: { type: 'sine' } });

  crush7 = new Tone.BitCrusher(4);
  crush7.toMaster();

  synth7.connect(crush7);
}

function triggerSynth7(bits, note, noteLength) {
  crush7.bits = bits;
  synth7.triggerAttackRelease(note, noteLength);
}

function cleanupSynth7() {
  crush7.dispose();
  synth7.dispose();
}

function createSynth8() {
  synth8 = new Tone.Synth({oscillator: { type: 'sine' } });

  tremolo8 = new Tone.Tremolo(5, 1);
  tremolo8.toMaster();
  tremolo8.start();

  synth8.connect(tremolo8);
}

function triggerSynth8(tremFreq, note, noteLength) {
  tremolo8.frequency.value = tremFreq;
  synth8.triggerAttackRelease(note, noteLength);
}

function cleanupSynth8() {
  tremolo8.stop();
  tremolo8.dispose();
  synth8.dispose();
}

function createRepeat() {
  synthRepeat = new Tone.Synth({oscillator: { type: 'sine' } });
  synthRepeat.toMaster();

  id = Tone.Transport.scheduleRepeat(function(time) {
    synthRepeat.triggerAttackRelease('a3', '4n', time);
  }, '1');
}

function cleanupRepeat() {
  Tone.Transport.clear(id);
  synthRepeat.dispose();
}

function createPattern() {
  synthPat = new Tone.Synth({oscillator: { type: 'sine' } });
  synthPat.toMaster();

  thePattern = new Tone.Pattern(function(time, note) {
    synthPat.triggerAttackRelease(note, '8n', time);
  }, ['c3', 'e3', 'g3', 'c4'], 'up');

  thePattern.start();
}

function changePattern(pat) {
  thePattern.pattern = pat;
}

function cleanupPattern() {
  thePattern.stop();
  thePattern.dispose();
  synthPat.dispose();
}

function createPart() {
  synthPart = new Tone.Synth({oscillator: { type: 'sine'} });
  synthPart.toMaster();

  thePart = new Tone.Part(function (time, event) {
    synthPart.triggerAttackRelease(event.note, event.dur, time);
  }, [{'note' : 'c3', 'dur' : '0.2', 'time' : '0'},
      {'note' : 'e3', 'dur' : '0.5', 'time' : '1'},
      {'note' : 'f#3', 'dur' : '0.8', 'time' : '2'}]);

  thePart.loopStart = 0;
  thePart.loopEnd = 3;
  thePart.loop = true;

  thePart.start();
}

function cleanupPart() {
  thePart.stop();
  thePart.dispose();
  synthPart.dispose();
}

function createSequence() {
  synthSeq = new Tone.Synth({oscillator: { type: 'sine'} });
  synthSeq.toMaster();

  theSequence = new Tone.Sequence(function (time, event) {
    synthSeq.triggerAttackRelease(event.note, event.dur, time);
  }, [[
        {'note' : 'c3', 'dur' : '0.1'},
        {'note' : 'e3', 'dur' : '0.1'},
        {'note' : 'f#3', 'dur' : '0.1'}],
      {'note' : 'c4', 'dur' : '0.3'},
      {'note' : 'd4', 'dur' : '0.3'},
      {'note' : 'e4', 'dur' : '0.3'}
      ]);

  theSequence.loopStart = 0;
  theSequence.loopEnd = 3;
  theSequence.loop = true;

  theSequence.start();
}

function cleanupSequence() {
  theSequence.stop();
  theSequence.dispose();
  synthSeq.dispose();
}

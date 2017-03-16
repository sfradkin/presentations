
var waContext;
var waOsc;
var waGain;

function waInit() {
  window.AudioContext = window.AudioContext || window.webkitAudioContext;
  waContext = new AudioContext();
}

function waCreate() {
  waOsc = waContext.createOscillator();
  waOsc.type = "sine";
  waOsc.frequency.value = 220;

  waGain = waContext.createGain();
  waGain.gain.value = 1.0;

  waOsc.connect(waGain);
  waGain.connect(waContext.destination);
}

function waStart() {
  waOsc.start();
}

function waStop() {
  waOsc.stop();
}

function waGainDown() {
  waGain.gain.value = 0;
}

function waGainUp() {
  waGain.gain.value = 1.0;
}

function waCleanup() {
  waGain = null;
  waOsc = null;
  waContext = null;
}

SuperDirt.start;

s.reboot;
Server.killAll;

s.record;
s.stopRecording;

Safety.enable;
Safety.disable;

StageMaster.activate(numChannels: 2, compThreshold: 0.7, limiterLevel: 1.0, highEndDb: 3.0);
StageMaster.deactivate;

{x = SinOsc.ar(440)}.play;
x.free;

Quarks.install("SafetyNet");
Quarks.install("https://github.com/calumgunn/StageMaster.git");

Quarks.checkForUpdates({Quarks.install("SuperDirt", "v1.7.2"); thisProcess.recompile()})
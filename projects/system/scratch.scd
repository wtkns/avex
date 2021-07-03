Server.default.boot;
{ [SinOsc.ar(440, 0, 0.2), SinOsc.ar(442, 0, 0.2)] }.play;


o = Server.default.options;

// Post the number of output channels

o.device.postln;



b = NetAddr.new("127.0.0.1", 7771);    // create the NetAddr
b.sendMsg("/hello", "there");

NetAddr.langPort;    // retrieve the current port SC is listening to

Server.killAll;

jackd -dalsa -dhw:U192k
scsynth -u 57120
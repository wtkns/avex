//Server.local.options.numOutputBusChannels = 4;    // change number of input and output channels
//Server.local.options.numInputBusChannels = 4;
//Server.internal.options.numOutputBusChannels = 4;
//Server.internal.options.numInputBusChannels = 4;

// Server.local.options.device = "Built-in Audio";    // use a specific soundcard
// Server.local.options.device = "MOTU Traveler";
// Server.local.options.device = "TASCAM US-122";
// Server.local.options.device = "Jack Router";
// Server.local.options.device = nil;                // use the system default soundcard

// Server.local.options.blockSize = 128; // increase block size (default is 64)
// Server.internal.options.blockSize = 128;

// Server.local.options.sampleRate = 96000; // increase sampling rate (if your hardware supports it)
// Server.internal.options.sampleRate = 96000;
// Server.internal.options.sampleRate = nil;    // use the currently selected samplerate of the soundcard

// change the standard archive path to a custom one:
// Archive.archiveDir = "~/scwork".standardizePath;

// hook up jack ports to audio channels
//"SC_JACK_DEFAULT_INPUTS".setenv("system");
//"SC_JACK_DEFAULT_OUTPUTS".setenv("system");

//~addr=NetAddr.new("0.0.0.0", 57130);

// s=Server.new(\clbooted, ~addr);
// s.boot;

// s.serverRunning.postln;

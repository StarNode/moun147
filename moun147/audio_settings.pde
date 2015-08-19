String fileName = "audio.mp3";

import ddf.minim.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
FilePlayer filePlayer;
Gain       gain;
AudioOutput out;

void audioSettings(){

  
  minim = new Minim(this);

  AudioRecordingStream myFile = minim.loadFileStream( fileName, // the file to load
                                                      1024,     // the size of the buffer.
                                                      true      // load into memory
                                                    );
                               
  filePlayer = new FilePlayer( myFile );
  filePlayer.loop();  
  gain = new Gain(0.f);
  out = minim.getLineOut();  
  filePlayer.patch(gain).patch(out);
}

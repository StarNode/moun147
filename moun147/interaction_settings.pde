
import de.voidplus.leapmotion.*;

LeapMotion leap;
float hightwind;

void interactionSettings(){
  
  hightwind = height;

 // Threshold virtual / real Area
  thresholdVirtual = int(halfH-((height/100)*10));
  thresholdReal = int(halfH+((height/100)*10));

// Leap motion set-up
  leap = new LeapMotion(this);

}

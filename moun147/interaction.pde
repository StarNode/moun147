float   hand_grab;
PVector hand_position;
int     hand_id;
float exploration = 1;
float fi, handPos;


void interactions(){
  for (Hand hand : leap.getHands ()) {
    hand_position = hand.getPosition();
    hand_grab = hand.getGrabStrength();
  }
    exploration = map(hand_position.z, -10, 100, height, 0);
    rotX = map(hand_position.x, -430, 2250, 2*PI, 0) ;    
    sizeMountain = max(hand_grab*3, 1);
}

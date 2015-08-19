

void audio()
{
  float dB = map(hand_grab, 0, 1, -30, 0);
  gain.setValue(dB);  
}

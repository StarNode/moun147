

void setup()
{
  graphicSettings();
  interactionSettings();
  audioSettings();
}

void draw()
{ 
  background(0);
  lights();
  interactions();
  sizeLimiter(); // -> graphic_elaboration
  mountainTranslation(); // -> graphic_elaboration
  interactivity();
  addTexture();
  audio();
}



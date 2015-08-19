import saito.objloader.*;

void setup()
{
  graphicSettings();
  interactionSettings();
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
}



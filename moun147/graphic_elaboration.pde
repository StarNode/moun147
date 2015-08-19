float rotX;
boolean bStroke = false;
boolean bTexture = true;
int virtual;

void interactivity() // rotation and sizeMountain
{  
  if(exploration < thresholdVirtual) {
    
        model.disableTexture();
            bTexture = false;
            stroke(0,255,0);
            bStroke = true; 
        }
            
  if(exploration > thresholdVirtual && exploration < thresholdReal) {
            model.enableTexture();
            bTexture = true;
            stroke(0,255,0);
            bStroke = true;
            virtual = 1;

        }
  if(exploration > thresholdReal) {
            virtual = 0;
            model.enableTexture();
            bTexture = true;
            noStroke();
            bStroke = false;
        }
}



void sizeLimiter(){
   // Size Limiter
   if (height < width) {
      sizeMountain = min((height*0.001)*3, sizeMountain);
      sizeMountain = max(0, sizeMountain); }
   else {
      sizeMountain = min((width*0.001)*3, sizeMountain);
      sizeMountain = max(0, sizeMountain); }
}



void mountainTranslation(){
  pushMatrix();
  translate(halfW, halfH, 0);
  rotateX(2.355);
  rotateY(rotX);
  scale(sizeMountain);
  model.draw();
  popMatrix();
}




void addTexture(){
    for(int i = 0; i < model.getUVCount(); i ++)
  {
    PVector u = model.getUV(i);
    PVector stable_u = tmpmodel.getUV(i);    
  }
}

int thresholdVirtual, thresholdReal;
float sizeMountainFactor = 0.006;
int halfH, halfW;
float sizeMountain ;

// declare that we need a OBJModel and we'll be calling it "model"
OBJModel model;
OBJModel tmpmodel;

void graphicSettings(){
  
  size(displayWidth, displayHeight, P3D); // window size

  // making an object called "model" that is a new instance of OBJModel
  model = new OBJModel(this, "MOUNTAIN.obj");
  tmpmodel = new OBJModel(this, "MOUNTAIN.obj");

  // turning on the debug output (it's all the stuff that spews out in the black box down the bottom)
  model.enableDebug();
  model.enableTexture();
  
  noStroke();
  
  halfH = int(height/2);
  halfW = int(width/2);
  
  // Rescale to display Size
  if (height < width) sizeMountain = height*0.001;
  else {sizeMountain = width*0.001;}

}

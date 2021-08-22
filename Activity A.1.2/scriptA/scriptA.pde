float displacement;
void setup(){
 
  size(400, 400, P3D);
  surface.setResizable(true);
  // color of the stroke
  stroke(255);

  // don't fill uo geometry
  noFill();
  displacement = 0;
}

// similar to update
void draw(){ 
  // set black background
  background(0);
  // identity
  PMatrix3D identity = new PMatrix3D(1, 0, 0, 0,
                                  0, 1, 0, 0,
                                  0, 0, 1, 0,
                                  0, 0, 0, 1);
  
  // rotation matrix
  displacement +=0.01f;
  float cosangle = cos(displacement);
  float negsinangle = -sin(displacement);
  float sinangle = sin(displacement);
  PMatrix3D rotation = new PMatrix3D(cosangle, 0, sinangle, 0,
                                     0, 1, negsinangle, 0,
                                     negsinangle, 0, cosangle, 0,
                                     0, 0, 0, 1);
  // translation matrix
  float tx = width/2 ;
  float ty = width/2;
  float tz = 0;
  PMatrix3D translation = new PMatrix3D(1, 0, 0, tx,
                                        0, 1, 0, ty,
                                        0, 0, 1, tz,
                                        0, 0, 0, 1);
                                       
   
   // our working matrix
   PMatrix3D result = new PMatrix3D(identity);
   
   result.apply(translation);
   result.apply(rotation);

   // applyMatrix t the world
   applyMatrix(result);
   
  // drawing a square
  beginShape();
  vertex(-100, -100);
  vertex(100, -100);
  vertex(100, 100);
  vertex(-100, 100);
   
  endShape(CLOSE);
  
}

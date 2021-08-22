float displacement;
float pivot;
boolean flag = true;
float increment =0.0f;
float x = 0;
long lastTime = 0;
void setup(){
 
  size(400, 400, P3D);
  surface.setResizable(true);
  // color of the stroke
  stroke(255);

  // don't fill uo geometry
  noFill();
  displacement = 0;
   lastTime = millis();
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
  // translation matrix
  displacement +=0.05f;
  float cosangle = cos(displacement);
  float negsinangle = -sin(displacement);
  float sinangle = sin(displacement);
  PMatrix3D rotation = new PMatrix3D(cosangle, negsinangle, 0, 0,
                                     sinangle, cosangle, 0, 0,
                                     0, 0, 1, 0,
                                     0, 0, 0, 1);
  
  PMatrix3D rotation2 = new PMatrix3D(cosangle, negsinangle, 0, 30,
                                     sinangle, cosangle, 0, 30,
                                     0, 0, 1, 30,
                                     0, 0, 0, 1);
  
   
  x+=1; 
  increment = cos(x * PI/180); // 'Cosine of X degrees'
      
  float sx =increment;
  float sy =increment;
  float sz = increment;
  PMatrix3D scale = new PMatrix3D(sx, 0, 0, 0,
                                   0, sy, 0, 0,
                                   0, 0, sz, 0,
                                   0, 0, 0, 1);
                                       
                                    
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
   result.apply(rotation2);
   result.apply(scale);
   
   // applyMatrix t the world
   applyMatrix(result);
   
  // drawing a square
  beginShape();
  vertex(-20, -20);
  vertex(20, -20);
  vertex(20, 20);
  vertex(-20, 20);
   
  endShape(CLOSE);
  
}

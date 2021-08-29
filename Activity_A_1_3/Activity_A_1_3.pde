// whole figure;
float r1;
// First phalanx
float f1,f2,f3;
// Second phalanx
float s1,s2,s3;

boolean keyIsReleased;
void setup() {
  size(600, 600, P3D);
  surface.setResizable(true);
  stroke(255);
  noFill();
  r1 = f1 = f2 = f3 = s1 = s2 = s3 =0 ;  
  keyIsReleased = true;
}

// similar to update
void draw() {
  /*Parametros iniciales*/
  background(0);
  translate(width/2, height/2, 0);
  /*Rotate*/
  scale(0.60);
  pushMatrix();
  /* HAND */
    rotateY(r1);
    box(70*2,100*2,20*2);
    /*First finger*/
    pushMatrix();
      translate(-0,-80);
      rotateX(f1);
      translate(-50, -80);
      box(20*2,50*2,20*2);
      pushMatrix();
        translate(0, -40);
        rotateX(s1);
        translate(0, -60);
        box(20*2,50*2,20*2);
      popMatrix();
    popMatrix();
    /*Second finger*/
    pushMatrix();
      translate(0, -80);
      rotateX(f2);
      translate(0, -80);
      box(20*2,50*2,20*2);
      pushMatrix();
        translate(0, -40);
        rotateX(s2);
        translate(0, -60);
        box(20*2,50*2,20*2);
      popMatrix();
    popMatrix();
    /*Third finger*/
    pushMatrix();
      translate(0, -80);
      rotateX(f3);
      translate(50, -80);
      box(20*2,50*2,20*2);
      pushMatrix();
        translate(0, -40);
        rotateX(s3);
        translate(0, -60);
        box(20*2,50*2,20*2);
      popMatrix();
    popMatrix();
  popMatrix();  
  if(keyIsReleased == false){
    if(key == 'r') {
      r1 += 0.01f;
    }
    if(key == 'f'){
      r1 -= 0.01f;
    }
    /* First phalanx P1 */
    if(key == '1') {
      f1 += 0.01f;
    }   
    if(key == 'q'){
      f1 -= 0.01f;
    }
    /*  Second phalanx P1*/
    if(key == 'a'){
      s1 += 0.01f;
    }
    if(key =='z'){
      s1 -= 0.01f;
    }
    /* First phalanx P2 */
    if(key == '2') {
      f2 += 0.01f;
    }   
    if(key == 'w'){
      f2 -= 0.01f;
    }
    /*  Second phalanx P2*/
    if(key == 's'){
      s2 += 0.01f;
    }
    if(key=='x'){
      s2 -= 0.01f;
    }
    /* First phalanx P3 */
    if(key == '3') {
      f3 += 0.01f;
    }   
    if(key == 'e'){
      f3 -= 0.01f;
    }
    /*  Second phalanx P3*/
    if(key == 'd'){
      s3 += 0.01f;
    }
    if(key=='c'){
      s3 -= 0.01f;
    }
  }
  redraw();
}

void keyReleased(){
    keyIsReleased = true;
}
void keyPressed(){
    keyIsReleased = false;

}

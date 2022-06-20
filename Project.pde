
void setup() {
  size(1000, 1000,P3D);
  carreColor1 = color(0);
  carreHighlight1 = color(0);
  carreX1 = width/2-100;
  carreY1 = 15;
  carreX2 = width/2-100;
  carreY2 = carreSize +30;
  carreX3 = width/2;
  carreY3 = carreSize +30;
  carreX4 = width/2;
  carreY4 = 15;
  carreX5 = width/2+100;
  carreY5 = 15;
  carreX6 = width/2+100;
  carreY6 = carreSize +30;
  
}

void draw() {
  background(100);
  strokeWeight(1);
  update();
  polynome(); 
  pushMatrix();
  translate(-width/2, -height/2,-2000);
  rotateX(PI/5);
  rotateZ(frameCount/100.0);
  scale(1.2);
  pyramide(); 
  popMatrix();
  pushMatrix();
  translate(width*1.5, 0,-2000);
  rotateX(PI/5);
  rotateZ(frameCount/100.0);
  scale(1.2);
  plateauUlam();
  popMatrix();
  
}

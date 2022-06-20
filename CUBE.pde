void cube(int length, int numero){
  beginShape(QUADS);
  // face avant
  vertex(-length, -length,  length);
  vertex( length, -length,  length);
  vertex( length,  length,  length);
  vertex(-length,  length,  length);

  // face arriere
  vertex( length, -length, -length);
  vertex(-length, -length, -length);
  vertex(-length,  length, -length);
  vertex( length,  length, -length, 0, length);

  // face du bas
  vertex(-length,  length,  length);
  vertex( length,  length,  length);
  vertex( length,  length, -length);
  vertex(-length,  length, -length);

  //face haute 
  vertex(-length, -length, -length);
  vertex( length, -length, -length);
  vertex( length, -length,  length);
  vertex(-length, -length,  length);

  // face de droit 
  vertex( length, -length,  length);
  vertex( length, -length, -length);
  vertex( length,  length, -length);
  vertex( length,  length,  length);

  // face gauche
  vertex(-length, -length, -length);
  vertex(-length, -length,  length);
  vertex(-length,  length,  length);
  vertex(-length,  length, -length);

  endShape();
  translate(-17,8,20);
  textSize((length)+1);
  fill(0);
  text(numero,0,0);
  translate(17,-8,-20);
}

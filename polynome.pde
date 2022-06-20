void polynome(){
  stroke(255);
  if (bouton1) {
    fill(carreHighlight1);
  }  else {
    fill(carreColor1);
  }
  rect(carreX1, carreY1, carreSize, carreSize);
  
  if  (bouton2){
    fill(carreHighlight1);
  }  else {
    fill(carreColor1);
  }
  rect(carreX2, carreY2, carreSize, carreSize);
  
  
  if  (bouton3){
    fill(carreHighlight1);
  } else {
    fill(carreColor1);
  }
  rect(carreX3, carreY3, carreSize, carreSize);
  
  
  if  (bouton4){
    fill(carreHighlight1);
  } else {
    fill(carreColor1);
  }
  rect(carreX4, carreY4, carreSize, carreSize);
  
  
  
  if  (bouton5){
     fill(carreHighlight1);
  } else {
    fill(carreColor1);
  }
  rect(carreX5, carreY5, carreSize, carreSize);
  
  
  
  if  (bouton6){
    fill(carreHighlight1);
  }
  else {
    fill(carreColor1);
  }
  rect(carreX6, carreY6, carreSize, carreSize);
  
  textpoly();
}
  
 void update() {
   if ( overcarre(carreX1, carreY1, carreSize, carreSize) ) {
    bouton1 = true;
    bouton2 = false;
    bouton3 = false;
    bouton4 = false;
    bouton5 = false;
    bouton6 = false;
  } else if  ( overcarre(carreX2, carreY2, carreSize, carreSize) ){
    bouton1 = false;
    bouton2 = true;
    bouton3 = false;
    bouton4 = false;
    bouton5 = false;
    bouton6 = false;
  }else if  ( overcarre(carreX3, carreY3, carreSize, carreSize) ){
    bouton1 = false;
    bouton2 = false;
    bouton3 = true;
    bouton4 = false;
    bouton5 = false;
    bouton6 = false;
  }else if  ( overcarre(carreX4, carreY4, carreSize, carreSize) ){
    bouton1 = false;
    bouton2 = false;
    bouton3 = false;
    bouton4 = true;
    bouton5 = false;
    bouton6 = false;
  }else if  ( overcarre(carreX5, carreY5, carreSize, carreSize) ){
    bouton1 = false;
    bouton2 = false;
    bouton3 = false;
    bouton4 = false;
    bouton5 = true;
    bouton6 = false;
  }else if  ( overcarre(carreX6, carreY6, carreSize, carreSize) ){
    bouton1 = false;
    bouton2 = false;
    bouton3 = false;
    bouton4 = false;
    bouton5 = false;
    bouton6 = true;
  }
  else {
    bouton1 = false;
    bouton2 = false;
    bouton3 = false;
    bouton4 = false;
    bouton5 = false;
    bouton6 = false;
  }
}
void mousePressed() {
  if (bouton1) {
    xpuiss2 += 1;
  }
  else if (bouton2) {
    xpuiss2 -= 1;
  }
  else if (bouton3) {
    xpuiss1 -= 1;
  }
  else if (bouton4) {
    xpuiss1 += 1;
  }
  else if (bouton5) {
    constante += 1;
  }
  else if (bouton6) {
    constante -= 1;
  }
}

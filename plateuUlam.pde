void plateauUlam(){
  int x = 1;
  int y = 0;
  int move = 1;
  int movesAllowed = 1;
  int positiony = 1;
  int positionz = 4;
  for (int i : poly()) {
  if (i == 1){
    fill(0);
  }
  else if (npremiers(i)){
    fill(148, 213, 212); 
  } else if (estParfait(i)) {
        fill(255, 255, 0);  
    }else if(estDeficient(i)) {
        fill(190, 245, 116); 
    } else if(estAbondant(i)) {
        fill(0, 128, 128);
    } 
    
    cube(taille/2, i);
    translate(x*taille, y*taille);
  
    move +=1; 
    if (move > movesAllowed) {
      move = 1;
      if (x == 1 && y == 0) {
        x = 0;
        y = -1;
      } else if (x == 0 && y == -1) {
        x = -1;
        y = 0;
      } else if (x == -1 && y == 0) {
        x = 0;
        y = 1;
      } else {
        x = 1;
        y = 0;
      }
      positiony += 1;
      positionz += 1;
      
    }

    if (positiony > 2) {
      positiony = 1;
      movesAllowed += 1;
    }
    if (positionz > 4) {
      positionz = 1;
    }
  }
    
}
     

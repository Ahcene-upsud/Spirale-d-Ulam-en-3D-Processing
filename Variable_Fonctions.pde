int carreX1, carreY1; 
int carreX2, carreY2;  
int carreX3, carreY3;  
int carreX4, carreY4;  
int carreX5, carreY5;  
int carreX6, carreY6;
int carreSize = 20; 
boolean bouton1 = false;
boolean bouton2 = false;
boolean bouton3 = false;
boolean bouton4 = false;
boolean bouton5 = false;
boolean bouton6 = false;

color carreColor1, carreHighlight1;

int maxNumber = 999;
int taille = 35;
int  xpuiss2= 0;
int xpuiss1 = 0;
int constante = 0;


int sd(int n){
  int sommeDiviseurs = 0;
   for (int i = 1; i <= n ; i++) {
    if (n % i == 0){
    sommeDiviseurs+=i;
    }
    }
    return sommeDiviseurs;
    }
boolean estParfait(int nombre){
    if(sd(nombre)== 2*nombre){
      return true;
  }
    return false;
}
boolean npremiers (int x){
      if(sd(x)==x+1){
      return true;
      }
      return false;
}
boolean estDeficient(int nombre){
     if( sd(nombre) < 2*nombre){
       return true;
  }
       return false;
}
boolean estAbondant(int nombre){
     if( sd(nombre) > 2*nombre){
       return true;
  }
      return false;
}

boolean overcarre(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
  
}
int sizeMax(){
  int a = 0;
  if (xpuiss2 ==0 && xpuiss1 == 0 && constante !=0){
    a = 1;
    return a;
  }
  for (int i = 0; i<=maxNumber; i++){
    a =  i*i*xpuiss2 + xpuiss1*i + constante;
    if (a < 0){
    a = -a;
  }
    if (a > maxNumber){
      a = i;
      break;
    }
  
  }
  return a;
}

int[] poly(){
  int array[] =new int[sizeMax()];
  
  for (int i = 1; i<=sizeMax(); i++){
    int a =  i*i*xpuiss2 + xpuiss1*i + constante;
    array[i-1] = a;
  }
  return array;
}

void textpoly(){
  String a = "f(x)= " + xpuiss2 + "x²       +   " + xpuiss1 + "x       +  "  + constante;
  textSize((taille/2)+2);
  fill(255,0,0);
  text(a, width/2-155, 45);
  
}

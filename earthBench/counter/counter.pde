int cont = 0;
int mSec;
int wait;

void setup(){
   mSec = millis();
}

void draw(){
  println(cont+ " "+ mSec);
  if(cont == 1){
    wait = 10000;
    
    background(255,0,0);
    println(cont+ " "+ mSec+ " ");
    if(millis() - mSec >= wait){
      cont = 0;
      mSec = millis();
    }
  } else if (cont == 0){
    background(0,255,0);
  }
}

void mousePressed(){
  if(mouseButton == LEFT){
    cont ++;
  }
}
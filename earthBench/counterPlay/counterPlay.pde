import ddf.minim.*;

Minim minim;
AudioPlayer player;


int cont = 0;
int mSec;
int wait;

void setup(){
   mSec = millis();
   
   minim = new Minim(this);
   
   player = minim.loadFile("groove.mp3");
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
      player.play();
    }
  } else if (cont == 0){
    background(0,255,0);
    mSec = millis();
    player.rewind();
  }
}

void mousePressed(){
  if(mouseButton == LEFT){
    cont ++;
  }
}
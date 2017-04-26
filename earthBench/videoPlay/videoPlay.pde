// hacer que una activación de Led en arduino accione un video y un audio

import processing.video.*;


Movie mov;

void setup() {
  size(720, 480);
  background(0);
  mov = new Movie (this, "transit.mov");
}

void movieEvent(Movie movie) {
  mov.read();
}

void mousePressed() {
  if (mouseButton == RIGHT) {
    mov.play();
    mov.speed(1.);
  } else if(mouseButton == LEFT){
    mov.stop();
    
  }
  
}

void draw() {
  image(mov, 0, 0);
}
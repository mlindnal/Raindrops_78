PImage background;
int index = 1;
int oldTime = 0;
int threshold = 2000;
Drops[] d = new Drops[700]; //an array which makes exactly 700 raindrops
Catcher catcher;
int score;
boolean start;
boolean stop;
boolean endgame;
int wdth = 100;
int hgt = 50;
int lives;

void setup() {
  background = loadImage("rainmakerbackground.jpg"); //set background
  size(background.width, background.height);
  start=false;
<<<<<<< HEAD
<<<<<<< HEAD
  for (int i = 0; i < d.length; i++) {
=======
=======
>>>>>>> 63299b01f681357f8b4c388c3dd341145991bca2
  for (int i = 0; i < d.length; i++) { 
>>>>>>> 63299b01f681357f8b4c388c3dd341145991bca2
    d[i] = new Drops();
  }
  catcher = new Catcher(); //declare booleans, varialbes, and a catcher
  endgame=false;
  lives=3;
  start=false;
 stop=false;
}

void draw() {
  if (start==false) { //if the game is not started then it will not run and a start screen will be present
  rectMode(CENTER);
  fill(0,255,0);
  rect(width/2,height/2,wdth,hgt);
  fill(0);
  textAlign(CENTER);
    textSize(20);
    text("Start", width/2, height/2);
  }
<<<<<<< HEAD
<<<<<<< HEAD
  if (start==true && stop==false;) { //if the game is started then it will run accordingly
=======
  if (start==true && stop==false;) { //if the game is started then it will run accordingly 
>>>>>>> 63299b01f681357f8b4c388c3dd341145991bca2
=======
  if (start==true && stop==false;) { //if the game is started then it will run accordingly 
>>>>>>> 63299b01f681357f8b4c388c3dd341145991bca2
    background(background);
    textSize(72);
    fill(237, 255, 3);
    text(score, height/3,width/2);
    catcher.display();
    catcher.move();
    for (int i = 0; i < index; i++) {
      d[i].display();
      d[i].drop();
      if (catcher.catchDrop(d[i]) == true) { 
        d[i].shoo();
        score++;
        threshold-=10;
      }
    if (d[i].loc.y>height && d[i].loc.y<height+d[i].d/4) { //if the raindrop has passed the the bottom of the screen then a life should be taken away
        lives--;
<<<<<<< HEAD
<<<<<<< HEAD
      }
=======
      }  
>>>>>>> 63299b01f681357f8b4c388c3dd341145991bca2
=======
      }  
>>>>>>> 63299b01f681357f8b4c388c3dd341145991bca2
      if (lives==0) {
        endgame=true;
    }
    }
    if (millis() - oldTime > threshold) { //time for set intervals of raindrops
      if (index < d.length) {
        index++;
        oldTime = millis();
      }
    if (endgame==true) { if the game is over then the game over screen will appear
        background(255,0,0);
        textAlign(CENTER);
        text("GAME OVER", width/2, height/2);
    }
  }
 }
}
void mousePressed() { //press to start the game
    start=true;
  }
void keyPressed(){ // if the game is over press r to reset the game
 if(key == 'r'){
  background(0);
   start=false;
  stop=false;
  score=0;
<<<<<<< HEAD
<<<<<<< HEAD
 }
}
=======
=======
>>>>>>> 63299b01f681357f8b4c388c3dd341145991bca2
 } 
}

>>>>>>> 63299b01f681357f8b4c388c3dd341145991bca2

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
<<<<<<< HEAD
  for (int i = 0; i < d.length; i++) { 
    d[i] = new Drops();
  }
  catcher = new Catcher();
=======
  start=false;
  for (int i = 0; i < d.length; i++) { 
    d[i] = new Drops();
  }
  catcher = new Catcher(); //declare booleans, varialbes, and a catcher
>>>>>>> 63299b01f681357f8b4c388c3dd341145991bca2
  endgame=false;
  lives=3;
  start=false;
 stop=false;
}

void draw() {
<<<<<<< HEAD
  if (start==false) {  //if the game is not being started then it will not play and the start screen will stay
    rectMode(CENTER);
    fill(0, 255, 0);
    rect(width/2, height/2, wdth, hgt);
    fill(0);
    textAlign(CENTER);
    textSize(20);
    text("Start", width/2, height/2);
  }
  if (start==true && stop==false) {
    background(background);
    textSize(72);
    fill(237, 255, 3);
    text(score,height/3,width/2);
    catcher.display();
    catcher.move();
    for (int i = 0; i <= index; i++) {
=======
  if (start==false) { //if the game is not started then it will not run and a start screen will be present
  rectMode(CENTER);
  fill(0,255,0);
  rect(width/2,height/2,wdth,hgt);
  fill(0);
  textAlign(CENTER);
    textSize(20);
    text("Start", width/2, height/2);
  }
  if (start==true && stop==false;) { //if the game is started then it will run accordingly 
    background(background);
    textSize(72);
    fill(237, 255, 3);
    text(score, height/3,width/2);
    catcher.display();
    catcher.move();
    for (int i = 0; i < index; i++) {
>>>>>>> 63299b01f681357f8b4c388c3dd341145991bca2
      d[i].display();
      d[i].drop();
      if (catcher.catchDrop(d[i]) == true) { 
        d[i].shoo();
        score++;
        threshold-=10;
      }
<<<<<<< HEAD
      if (d[i].loc.y>height && d[i].loc.y<height+d[i].d/4) {
=======
    if (d[i].loc.y>height && d[i].loc.y<height+d[i].d/4) { //if the raindrop has passed the the bottom of the screen then a life should be taken away
>>>>>>> 63299b01f681357f8b4c388c3dd341145991bca2
        lives--;
      }  
      if (lives==0) {
        endgame=true;
<<<<<<< HEAD
      }
    }
    if (millis() - oldTime > threshold) {
=======
    }
    }
    if (millis() - oldTime > threshold) { //time for set intervals of raindrops
>>>>>>> 63299b01f681357f8b4c388c3dd341145991bca2
      if (index < d.length) {
        index++;
        oldTime = millis();
      }
<<<<<<< HEAD
      if (endgame==true) {
        background(random(255), random(255), random(255));
        textAlign(CENTER);
        text("GAME OVER", width/2, height/2);
      }
    }
  }
}
void mousePressed() {
        start = true;
}
void keyPressed() {
if (key == 'r') {
background(0);
start=false;
stop=false;
score=0;
}
=======
    if (endgame==true) { //if the game is over then the game over screen will appear
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
 } 
>>>>>>> 63299b01f681357f8b4c388c3dd341145991bca2
}


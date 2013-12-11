PImage background;
int index = 1;
int oldTime = 0;
int threshold = 2000;
Drops[] d = new Drops[700]; //an array which makes exactly 700 raindrops
Catcher catcher;
int score;

void setup() {
 background = loadImage("rainmakerbackground.jpg"); //set background
  size(background.width,background.height);
  for (int i = 0; i < d.length; i++) { 
    d[i] = new Drops();
  }
  catcher = new Catcher();
}

void draw() {
    background(background);
    textSize(72);
    fill(237,255,3);
    text(score, 10, 100);
    for (int i = 0; i < index; i++) {
      d[i].display();
      d[i].drop();
      if (catcher.catchDrop(d[i]) == true) {
        d[i].shoo();
        score++;
        threshold-=10;
      }
    }
    catcher.display();
    catcher.move();
    if (millis() - oldTime > threshold) {
      if (index < d.length) {
        index++;
        oldTime = millis();
      }
    }
  }


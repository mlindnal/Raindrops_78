Drops[] drops = new Drops[25];
void setup() {
  size(500, 500);
  background(25);
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Drops();
  }
}

void draw() {
  background(0);
  for (int i = 0; i < drops.length; i++) {
    drops[i].display(); 
    drops[i].move();
    drops[i].reset();
  }
}


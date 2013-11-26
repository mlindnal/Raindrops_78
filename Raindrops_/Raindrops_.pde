//Drops S1;
Drops[] drops = new Drops[25];
void setup() {
  size(500, 500);
  background(25);
//  S1 = new Snow();
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Drops();
  }
}

void draw() {
  background(0);
  //  S1.display();
  //  S1.move();
  for (int i = 0; i < drops.length; i++) {
    drops[i].display(); 
    drops[i].move();
    drops[i].reset();
  }
}


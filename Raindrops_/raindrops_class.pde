 class Drops {
  PVector loc;
  PVector vel;



  Drops() {
    loc = new PVector(random(width), random(-1000, 0));
    vel = new PVector(0, 2);
  }
  void display() {
    fill(0, 176, 255);
    ellipse(loc.x, loc.y, 30, 30);
  }
  void move() {
    loc.add(vel);
  }
  void reset() {
    if (loc.y >= height) {
      loc.y = 0;
    }
  }
}




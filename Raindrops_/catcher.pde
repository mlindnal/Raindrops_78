class Catcher{
  class Catcher {
  PVector loc;
  int d;

  Catcher() {
    loc = new PVector(mouseX, height-d);
    d = 30;
  }

  void display() {
    fill(255);
    ellipse(loc.x, loc.y, d, d);
  }

  void update() {
    loc.set(mouseX, height-d);
  }
  boolean catchDrop(Raindrop drop) {
    if (loc.dist(drop.loc) < d/2 + drop.d/2) {
      return true;
    }
    else {
      return false;
    }
  }
}

class Catcher { //initialize catcher class
  PVector loc;
  int d;
  PImage catcher;

  Catcher() { //create catcher
    loc = new PVector(mouseX, height-d);
    d = 40;
catcher = loadImage("catcher.png");
}
  
  void display() { //diplays catcher mitt
    image(catcher,loc.x,loc.y,d,d); 
  }

  void move() { //so that the catcher will move along with your mouse
    loc.set(mouseX, height-d);
  }
  boolean catchDrop(Drops drop) { //if drop is caught, it must go away. if not it continues in its path.
    if (loc.dist(drop.loc) < d/2 + drop.d/2) {
      drop.shoo();
      return true;
    }
    else {
      return false;
    }
  }
}

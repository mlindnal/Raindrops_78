class Drops {
  PVector loc, vel, acc;
  int d;
  PImage drop;

  Drops() { //creates the drop and gives a velocity,acceleration, and location to each drop
    drop = loadImage("raindrop.png");
    loc = new PVector(random(width), -d);
    vel = new PVector(0, random(1,4));
    acc = new PVector(0, .01);
    d=15;
  }

  void display() { //display the catcher's mitt 
    image(drop,loc.x, loc.y, d, d);
  }
  void drop() {
    vel.add(acc);
    loc.add(vel);
  }
  void reset() { //resets more drops to 
    loc.set( random(width), 0);
    vel.set(0, random(1, 3));
  }

  void shoo() {//function which tells the drop to get off the game screen
    loc.set(height*2, 0);
    vel.set(0, 0);//velocity and acceleration are 0(drop is not going to move anywhere)
    acc.set(0, 0);
  }
}

int current;
int old;
int change;

void setup() {
  size(500, 500);
  old=0;
}

void draw() {
  current= millis();
  change= current- old;
  background(0);
if (change>3000){
  ellipse(random(width), random(height), random(25), random(25));
  ellipse(random(width), random(height), random(25), random(25));
  ellipse(random(width), random(height), random(25), random(25));
  old=current;
}
}

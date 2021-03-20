void setup() {
  size(300, 300);
}

void draw() {
  background(4, 150, 0);
  color r = color(255, 0, 0);
  color b = color(0, 0, 255);
  color g = color(0, 255, 0);
  bezier(50, 100, 40, 50, 100, 50, 100, 90);
  bezier(100, 90, 100, 50, 160, 50, 150, 100);
  fill(4, 150, 0);
  blendMode(REPLACE);
  stroke(r);
  strokeWeight(10);
  line(50, 100, 100, 180);
  line(150, 100, 100, 180);
  bezier(50, 100, 40, 50, 100, 50, 100, 90);
  bezier(100, 90, 100, 50, 160, 50, 150, 100);
  stroke(0, 20, 450);
  line(150, 200, 300, 250);
  line(300, 200, 150, 250);
  blendMode(LIGHTEST);
  stroke(500, 255, 100);
  rect(200, 100, 50, 50);
  

}

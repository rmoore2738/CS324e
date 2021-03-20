void setup() {
  size(500, 500); 
}

void draw() {
  // grass color 
  color c = color(100, 200, 50);
  fill(c);
  noStroke();
  rect(0, 300, 500, 255);
  // sky color 
  color b = color(0, 140, 220);
  fill(b);
  noStroke();
  rect(0, 0, 500, 300);
  // flower stem
  strokeWeight(4);
  stroke(4, 102, 0);
  line(100, 300, 100, 240);
  // Rose top
  strokeWeight(2);
  stroke(20, 20, 0);;
  fill(700, 7, 70);
  bezier(80, 200, 90, 250, 110, 250, 120, 200);
  bezier(80, 200, 90, 210, 110, 210, 120, 200);
  bezier(80, 200, 90, 190, 110, 190, 120, 200);
  strokeWeight(1);
  bezier(80, 200, 95, 195, 105, 195, 120, 200);
  bezier(80, 200, 95, 205, 105, 205, 120, 200);
  line(80, 200, 120, 200);
  // Yellow house
  strokeWeight(1.5);
  color a = color(350, 800, 10);
  fill(a);
  stroke(0, 0, 0);
  rect(250, 100, 200, 200);
  // window
  ellipseMode(CENTER);
  ellipse(350, 150, 50, 50);
  line(325, 150, 375, 150);
  line(350, 125, 350, 175);
  // door 
  fill(0, 0, 0);
  rect(320, 220, 60, 80);
  // roof 
  fill(140, 30, 10);
  triangle(350, 10, 450, 100, 250, 100);
  // brown path
  strokeWeight(5);
  stroke(0, 0, 0);
  fill(100, 2, 10);
  quad(320, 300, 200, 500, 300, 500, 380, 300);
}

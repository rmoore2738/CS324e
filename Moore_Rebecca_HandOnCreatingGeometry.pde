
void setup() {
  size(300, 300);
}

void draw() {
  background(255);
  strokeWeight(5);
  line(0, 150, 300, 150);
  line(14, 115, 50, 115);
  triangle(10, 150, 14, 120, 30, 150);
  triangle(50, 150, 50, 120, 70, 150);
  line(50, 120, 60, 100);
  ellipseMode( CENTER);
  ellipse(70, 90, 30, 40);
  ellipse(60, 90, 10, 10);
  ellipse(80, 90, 10, 10);
  line(70, 100, 73, 100);
  point(224, 140);
  rect(200, 150, 50, -100);
  rect(210, 150, 30, -50);
  quad(40, 170, 10, 220, 20, 220, 50, 170);
  quad(50, 170, 50, 220, 70, 220, 60, 170);
  arc(200, 200, 50, 50, 0, PI+QUARTER_PI, PIE);
  bezier(150, 250, 100, 270, 100, 290, 150, 290);
  strokeWeight(20);
  point(250, 20);
  strokeWeight(4);
  point(226, 135);
}

class Comet {
  float x;
  float y;
  float radius;
  
  Comet() {
    x = 200;
    y = 200;
    radius = 50;
  }
  
  Comet(float x, float y, float radius) {
    this.x = x;
    this.y = y;
    this.radius = radius;
  }
  
  void displayComet() {
    fill(#F8F8FF);
    stroke(#F8F8FF);
    strokeWeight(2);
    ellipse(x, y, radius * 5, radius);
    ellipse(x + 200, y + 800, radius * 3, radius);
    
  }
 
}

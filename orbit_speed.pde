// makes the planets orbit given the starting coordinates 
class orbit {
  // initializes values for x, y, rad and speed
  float rad = 0;
  float x = 0;
  float y = 0;
  float x1 = 0;
  float y1 = 0;
  float speed = 0;
  float size = 0;

  orbit(float _rad, float _speed, float _x1, float _y1, float _size) {
    x1 = _x1;
    y1 = _y1;
    rad = _rad;
    speed = _speed * 1000;
    size = _size;
  }
 
  void run() {
    float theta = TWO_PI * millis()/ speed;
    float x = cos(theta) * rad;
    float y = sin(theta) * rad;
    pushMatrix();
    translate(width / 2, height / 2);
    // draws the planets
    ellipse(x, y, size, size);
    // draws the orbit lines
    noFill();
    ellipse(0, 0, x1, y1);
    noStroke();
    popMatrix();
  }
}

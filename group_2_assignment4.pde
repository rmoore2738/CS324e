PImage img;
float[] rayArray;

orbit mercorbit;
orbit venusorbit;
orbit earthorbit;
orbit marsorbit;
orbit jupiterorbit;
orbit saturnorbit;
orbit uranusorbit;
orbit neptuneorbit;

Comet comet1;
float x1 = 35;
float y1 = 40;
float speed1 = 3;

// num of rays 
int total = 90;
// divides the radius evenly for the rays
float Step = 360.0/total;

void setup() {
  // sets background to stars image size
  size(875, 875);
  img = loadImage("stars3.jpeg"); 
  smooth();
  
  // makes array based on total num of rays 
  rayArray = new float[total];
  
  // makes all the planet variables from orbit class
  mercorbit = new orbit(75, 3, 150, 150, 20);
  venusorbit = new orbit(110, 4, 220, 220, 30);
  earthorbit = new orbit(145, 6, 290, 290, 50);
  marsorbit = new orbit(180, 5, 360, 360, 45);
  jupiterorbit = new orbit(250, 7, 500, 500, 70);
  saturnorbit = new orbit(300, 5, 600, 600, 40);
  uranusorbit = new orbit(350, 6, 700, 700, 55);
  neptuneorbit = new orbit(400, 8, 800, 800, 50);
  
   for (int x = 0; x < total; x++)
   {
     // fills array with random values for rays
     rayArray[x] = (random(600));
   }
}

void draw() {
  background(img);
  comet1 = new Comet(x1, y1, 20);
  move();
  comet1.displayComet();
  sunRays();
}

// animates the sun rays
void sunRays() {
  // ray color 
  fill(#FFA400);
  noStroke();
  
  pushMatrix();
  // centers the grid
  translate(width / 2, height / 2);
  
  // rays won't go farther than this
  float constraint = 20;
  
  // the moving rays around the sun
  beginShape();
  for (int x = 0; x < total; x++)
  {
    //uses noise function ro make rays randomly move 
    float radius = constraint + noise(rayArray[x]) * 50;
    float X1 = 0;
    float Y1 = 0;
    // ending position of rays 
    float X2 = X1 + radius * sin(radians(x * Step));
    float Y2 = Y1 + radius * cos(radians(x * Step));
    // makes the rays come to a point
    vertex(X2, Y2);
    
    // speed of animation
    rayArray[x] += 0.01;
  }
  endShape(CLOSE);
  
  // color and shape of the center of the sun
  fill(#FFD700);
  ellipse(0, 0, 50, 50);
  popMatrix(); 
 
 // calls planets function to draw them
  planets();
}


// draws all the planets using the orbit class 
void planets() {
  // mercury orbit 
  pushMatrix();
  fill(#F0FFF0);
  stroke(#F0FFF0);
  mercorbit.run();
  popMatrix();
  
  // venus
  pushMatrix();
  fill(#FF69B4);
  stroke(#FF69B4);
  venusorbit.run();
  popMatrix();
  
  // earth
  pushMatrix();
  fill(#00FA9A);
  stroke(#00FA9A);
  earthorbit.run();
  popMatrix();
  
  //mars
  pushMatrix();
  fill(#DDA0DD);;
  stroke(#DDA0DD);
  marsorbit.run();
  popMatrix();
  
  //jupiter
  pushMatrix();
  fill(#FFFF00);
  stroke(#FFFF00);
  jupiterorbit.run();
  popMatrix();
  
  //saturn
  pushMatrix();
  fill(#00FF7F);
  stroke(#00FF7F);
  saturnorbit.run();
  popMatrix();
  
  //uranus
  pushMatrix();
  fill(#00FFFF);
  stroke(#00FFFF);
  uranusorbit.run();
  popMatrix();
  
  //neptune
  pushMatrix();
  fill(#8A2BE2);
  stroke(#8A2BE2);
  neptuneorbit.run();
  popMatrix();
}

void move() {
  x1 = x1 + speed1;
  if (x1 > width) {
    x1 = 0;
  }
}

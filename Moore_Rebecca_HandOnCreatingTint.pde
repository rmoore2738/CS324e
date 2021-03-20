PImage img;

void setup() {
  surface.setResizable(true);
  img = loadImage("glitter.jpeg");
  surface.setSize(img.width, img.height);
  //access pixels
  img.loadPixels();
  for (int x = 0; x < img.width; x++) {
    for (int y = 0; y < img.height; y++) {
      //access pixel at index and set c to its value
      int index = x + y*img.width;
      color c = img.pixels[index]; 
      float r = red(c);
      float b = blue(c);
      float g = green(c);
      float one = (r + 800) / 2.0;
      float two = (b + 250) / 2.0;
      float three = (g + 300) / 2.0;
      img.pixels[index] = color(one, two, three);
    }
  }
  //update any modifications to pixels
  img.updatePixels();
}

void draw() {
  image(img, 0, 0);
  
}

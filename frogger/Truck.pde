class Truck extends Rect {

  PImage texture;
  float speed;
  
  Truck (float x, float y, float s) {
    super(x, y, grid*3, grid);
    speed = s;
    texture = loadImage("../assets/blue_truck.png");
  }
  
  void show () {
    x += speed;
    if (x <= 0 - grid*3) {
      x = width;
    }
    if (x >= width + grid*3) {
      x = 0;
    }
    image(texture, this.x, this.y);
  }
  
}

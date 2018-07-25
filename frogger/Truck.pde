class Truck extends Rect {

  PImage texture;
  float speed;

  Truck (float x, float y, float speed) {
    super(x, y, grid*3, grid);
    this.speed = speed;
    texture = loadImage("../assets/blue_truck.png");
  }

  void show () {
    int delay = 3*grid;
    x += speed;
    if (x <= 0 - grid*3 - delay) {
      x = width;
    }
    if (x >= width + grid*3 + delay) {
      x = 0;
    }
    if (speed < 0) {
      image(texture, this.x, this.y);
    } else {
      pushMatrix();
      scale(-1.0, 1.0);
      image(texture, -this.x, this.y);
      popMatrix();
    }
  }
}

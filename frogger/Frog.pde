class Frog extends Rect {

  PImage texture;
  
  Frog () {
    super(0, 0, 53, 39);
    texture = loadImage("../assets/80sFrogger.png");
    loadPixels();
    texture.loadPixels();
    image(texture, this.x, this.y);
  }
  
  void move (float dx, float dy) {
    this.x += dx * grid;
    this.y += dy * grid;
  }
  
}

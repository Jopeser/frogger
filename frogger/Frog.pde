class Frog extends Rect {

  PImage texture;
  
  Frog () {
    super(width/2-grid/2, height-grid, grid, grid);
    texture = loadImage("../assets/80sFrogger.png");
  }
  
  void show () {
    image(texture, this.x, this.y);
  }
  
  void move (float dx, float dy) {
    this.x += dx * grid;
    this.y += dy * grid;
  }
  
}

class Frog extends Rect {

  PImage texture;

  Frog () {
    super(width/2-grid/2, height-grid, grid, grid);
    texture = loadImage("../assets/80sFrogger.png");
  }

  void show () {
    //fill(255, 0, 0);
    //rect(x, y, grid, grid);
    image(texture, this.x, this.y);
  }

  void move (float dx, float dy) {
    if (x + dx * grid < 0 || x + dx * grid > width-grid ||
    y + dy * grid < 0 || y + dy * grid > height-grid)
      return;
    this.x += dx * grid;
    this.y += dy * grid;
  }
}

int grid = 50;
Frog frog;
Truck truck;

void setup () {
  size(550, 550); //10*grid
  background(0);
  frog = new Frog();
  truck = new Truck(grid*2, grid*5, -2);
}

void draw () {
  background(0);
  frog.show();
  truck.show();
}

void keyPressed () {
  if (keyCode == UP) {
    frog.move(0, -1);
  } else if (keyCode == DOWN) {
    frog.move(0, 1);
  } else if (keyCode == RIGHT) {
    frog.move(1, 0);
  } else if (keyCode == LEFT) {
    frog.move(-1, 0);
  }
}

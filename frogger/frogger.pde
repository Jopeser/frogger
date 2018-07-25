int grid = 50;
Frog frog;

void setup () {
  size(500, 500);
  background(0);
  frog = new Frog();
}

void draw () {

}

void keyPressed () {
  if (keyCode == UP) {
    frog.move(0, -1);
    println("§rtz");
  } else if (keyCode == DOWN) {
    frog.move(0, 1);
  } else if (keyCode == RIGHT) {
    frog.move(1, 0);
  } else if (keyCode == LEFT) {
    frog.move(-1, 0);
  }
}

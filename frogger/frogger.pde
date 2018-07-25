int grid = 50;
Frog frog;
Truck truck;
boolean pause = false;
ArrayList<Rect> colliders = new ArrayList<Rect>();

void setup () {
  size(550, 550); //11*grid; must be uneven
  background(0);
  frog = new Frog();
  truck = new Truck(grid*2, grid*5, -2);
  colliders.add(truck);
}

void draw () {
  if (pause)
    return;
  background(0);
  frog.show();
  truck.show();
  for (Rect collider : colliders) { //collision detection
    if (frog.collides(collider)) {
      pause = true;
      break;
    }
  }
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

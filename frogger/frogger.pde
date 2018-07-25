int grid = 50;
Frog frog;
boolean pause = false;
ArrayList<Rect> colliders = new ArrayList<Rect>();

Truck[] trucks = new Truck[3];
Truck[] trucks2 = new Truck[2];

void setup () {
  size(550, 550); //11*grid; must be uneven
  noStroke();
  background(0);
  frog = new Frog();
  for (int i = 0; i < trucks.length; i++) {
    trucks[i] = new Truck(i*6*grid, grid*9, -2);
    colliders.add(trucks[i]);
  }
  for (int i = 0; i < trucks2.length; i++) {
    trucks2[i] = new Truck(i*6*grid, grid*7, -3);
    colliders.add(trucks2[i]);
  }
}

void draw () {
  if (pause)
    return;
  background(0);
  //safe space
  fill(50);
  rect(0, height-grid, width, grid);
  frog.show();
  for (int i = 0; i < trucks.length; i++) {
    trucks[i].show();
  }
  for (int i = 0; i < trucks2.length; i++) {
    trucks2[i].show();
  }
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

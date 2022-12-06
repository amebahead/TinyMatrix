/* TODO LIST */
/*
Make World Class
two dimension array
land, soil, path, sleep room, ... class

*/

// Utill Library
Utill ut;

// global
int WORLD_WIDTH = 800;
int WORLD_HEIGHT = 600;
int ANT_SIZE = 20;

// Object
World wWorld;
Worker wAnt;
ArrayList<Food> foodList;

PVector moveSpeed;

void setup() {
  
  size(800, 600);
  frameRate(10);

  ut = new Utill();

  // Ant
  wAnt = new Worker(width / 2, height / 2, ANT_SIZE);

  // Food
  foodList = new ArrayList();
  foodList.add(new Food(ut.randomFloor(width), ut.randomFloor(height), ANT_SIZE));
  
  // World
  wWorld = new World(WORLD_WIDTH, WORLD_HEIGHT, ANT_SIZE);
  
 
  
}

void draw() {
  background(255); 


  wWorld.drawWorld();

  wAnt.update();
  wAnt.show();
  
  // World Check
  wWorld.checkVisit(wAnt);
  
  // Food Check
  for (int i = foodList.size() - 1; i >=0; i--) {
    Food food = foodList.get(i);
    food.show();
    
    if(wAnt.eatFood(food)) {
      foodList.remove(i);
    }
  }
}


void mouseClicked() {
  // foodList.add(new Food(floor(mouseX), floor(mouseY), ANT_SIZE));
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      moveSpeed = new PVector(0, -1);
      wAnt.applySpeed(moveSpeed);
    } else if (keyCode == DOWN) {
      moveSpeed = new PVector(0, 1);
      wAnt.applySpeed(moveSpeed);
    } else if (keyCode == LEFT) {
      moveSpeed = new PVector(-1, 0);
      wAnt.applySpeed(moveSpeed);
    } else if (keyCode == RIGHT) {
      moveSpeed = new PVector(1, 0);
      wAnt.applySpeed(moveSpeed);
    }

    // wAnt.update();
  }
}
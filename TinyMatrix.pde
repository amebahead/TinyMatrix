//<>// //<>// //<>//
SceneDelegate scene;

SceneDelegate getSceneDelegate() {

  // PhysicsSceneDelegate  TO-DO: sim study contents

  // return new SnakeSceneDelegate();
  return new PhysicsSceneDelegate();
}

void settings() {
  scene = getSceneDelegate();
  size(scene.getWidth(), scene.getHeight());
}

void setup() {
  frameRate(scene.getFrameRate());

  scene.onStart();
}

void draw() {
  scene.onUpdateWithDraw();

  fill(120);
  textSize(15);
  text(frameRate, 5, 25);  // Specify a z-axis value
}

void keyPressed() {
  if (scene != null) {
    scene.onKeyPressed();
  }
}

void mousePressed() {
  // foodList.add(new Food(floor(mouseX), floor(mouseY), ANT_SIZE));
  if (scene != null) {
    scene.onMouseDown(mouseX, mouseY);
  }
}

void mouseReleased() {
  if (scene != null) {
    scene.onMouseUp(mouseX, mouseY);
  }
}

void mouseDragged() {
  if (scene != null) {
    scene.onMouseMove(mouseX, mouseY);
  }
}

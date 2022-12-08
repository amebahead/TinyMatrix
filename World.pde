class World {

  Tile[][] worldArray;

  int stepSize;
  int entireWidth;
  int entireHeight;

  World(int _width, int _height, int _stepSize) {
    stepSize = _stepSize;
    entireWidth = _width / _stepSize;
    entireHeight = _height / _stepSize;

    // println(entireWidth, entireHeight);

    worldArray = new Tile[entireWidth][entireHeight];

    // Create Two dimention Array
    for (int w = 0; w < entireWidth; w++) {
      for (int h = 0; h < entireHeight; h++) {
        worldArray[w][h] = new Tile(w, h, stepSize, 10);
      }
    }
  }

  boolean drawWorld() {

    for (int g = 0; g < entireWidth; g++) {
      for (int s = 0; s < entireHeight; s++) {
        worldArray[g][s].drawTile();
      }
    }

    return true;
  }

  void checkVisit(Worker _ant) {
    int nowX = (int)(_ant.local.x / stepSize);
    int nowY = (int)(_ant.local.y / stepSize);

    println("======================now==============");
    println(nowX, nowY);

    Tile wTile = worldArray[nowX][nowY];

    if (wTile.isVisit == false) {
      println("First Visit");
      wTile.isVisit = true;
      wTile.colors = 240;
    }
  }
}

class Tile {
  
  int x;
  int y;
  int size;
  int colors;
  int borders;
  
  boolean isVisit;

  Tile(int _x, int _y, int _size, int _colors) {
    x = _x;
    y = _y;
    size = _size;
    colors = _colors;
    
    isVisit = false;
  }
  
  boolean drawTile() {
    
    fill(colors);
    stroke(10);
    strokeWeight(1);
    rect(x * size, y * size, size, size);
    
    return true;
  }
}

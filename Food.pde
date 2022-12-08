class Food {
  PVector local;
  float calory;
  int size;
  String fcolor;

  Food(int _x, int _y, int _size) {
    
    size = _size;
    local = new PVector(scaleUp(_x), scaleUp(_y));
    
    // println(local);
    // default option
    calory = 1;
    fcolor = "red";
  }
  
  /* Adjust coordinate with Scale size */
  int scaleUp(int rough) {
    int modNum = rough % size;
    
    return rough - modNum;
  }

  void show() {
    fill(0, 255, 0);
    noStroke();
    rectMode(CORNER);
    rect(local.x, local.y, size, size);
  }
}

class Worker {
  PVector local;
  PVector vel;
  PVector acc;

  int size;
  int growth;
  ArrayList<PVector> tail;

  Worker(int _x, int _y, int _size) {
    local = new PVector(_x, _y);
    size = _size;      

    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
    growth = 0;
    tail = new ArrayList();
  }

  void applySpeed(PVector _acc) {
    vel.mult(0);

    // Ant Size
    _acc.mult(size);

    acc.add(_acc);
    vel.add(acc);
  }
  
  // if Ant grow up, it would be longger
  void growup() {
    if(growth > 0) {
      if(growth == tail.size() && !tail.isEmpty()) {
        tail.remove(0);
      }
      tail.add(new PVector(local.x, local.y));
    }
  }

  void update() {
    // grow up
    growup();

    local.add(vel);
    
    // is Ant exited World?
    isExit();
    
    acc.mult(0);
  }
  
  // did Ant eat Food?
  boolean eatFood(Food food) {
    if(local.x == food.local.x && local.y == food.local.y) {
      growth++;
      
      return true;
    }
    
    return false;
  }

  void show() {
    
    stroke(0);
    rectMode(CORNER);
    
    // tail
    for(PVector t : tail) {
      fill(250, 80, 0);
      rect(t.x, t.y, size, size);
    }
    // head
    fill(255, 0, 0);
    rect(local.x, local.y, size, size);
    // println(local.x, local.y);
  }

  
  // Exit World
  void isExit() {
    if (local.x >= width - size) {
      local.x = width - size;
    } else if (local.x <= 0) {
      local.x = 0;
    }

    if (local.y >= height - size) {
      local.y = height - size;
    } else if (local.y <= 0) {
      local.y = 0;
    }
  }
}

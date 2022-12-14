class StringWarm {

  ArrayList<PVector> pos;
  ArrayList<PVector> vel;
  int bodyNum;
  int radius;
  int size;
  int boundWidth;
  int boundHeight;
  int rateCount;
  int changeRate;

  StringWarm(float x, float y, int num) {
    pos = new ArrayList();
    vel = new ArrayList();

    bodyNum = num;
    radius = 5;
    size = radius + radius;
    for (int i = 0; i < num; i++) {
      pos.add(new PVector(x, y));
      vel.add(new PVector());
    }
    rateCount = 0;
    changeRate = (int)random(20, 40);
  }

  public void setBound(int w, int h) {
    boundWidth = w;
    boundHeight = h;
  }

  public void step() {
    calulate();
    update();
    checkingBound();
  }

  public void randomForce() {
    rateCount += 1;
    if (rateCount == changeRate) {
      vel.get(0).mult(0.5f);
      vel.get(0).add(random(-3, 3), random(-3, 3));
      rateCount = 0;
    }
  }

  private void update() {
    for (int i = 0; i < bodyNum; i++) {
      if (i > 0) {
        vel.get(i).mult(0.3f);
      }
      pos.get(i).add(vel.get(i));
    }
  }

  private void checkingBound() {
    if (pos.get(0).x < 0 + radius) {
      pos.get(0).x = 0 + radius;
      vel.get(0).x *= -1;
    } else if (pos.get(0).x > boundWidth - radius) {
      pos.get(0).x = boundWidth - radius;
      vel.get(0).x *= -1;
    }
    if (pos.get(0).y < 0 + radius) {
      pos.get(0).y = 0 + radius;
      vel.get(0).y *= -1;
    } else if (pos.get(0).y > boundHeight - radius) {
      pos.get(0).y = boundHeight - radius;
      vel.get(0).y *= -1;
    }
  }

  private void calulate() {
    for (int i = 0; i < bodyNum - 1; i++) {
      float dx = (pos.get(i).x - pos.get(i + 1).x) * 0.9f;
      float dy = (pos.get(i).y - pos.get(i + 1).y) * 0.9f;
      vel.get(i + 1).x = dx;
      vel.get(i + 1).y = dy;
    }
  }

  public void draw() {
    fill(250, 80, 0);
    for (int i=0; i<pos.size()-1; i++) {
      if (i==0) {
        ellipse(pos.get(i).x, pos.get(i).y, radius, radius);
      }
      line(pos.get(i).x, pos.get(i).y, pos.get(i+1).x, pos.get(i+1).y);
    }
  }
}

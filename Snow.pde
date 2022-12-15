class Snow {

  int size;
  int radius;
  float g;
  float realityHandling;
  PVector pos;
  PVector vel;

  Snow(int x, int y, int s) {
    pos = new PVector(x, y);
    vel = new PVector();

    size = s;
    radius = size / 2;
    g = size / 20.0f;
    realityHandling = g * 0.01f;
  }

  public void update(int w, int h) {
    vel.x += random(-2, 2) * realityHandling;
    if (vel.x >= 2) {
      vel.x = 2;
    } else if (vel.x <= -2) {
      vel.x = -2;
    }

    pos.x += vel.x;
    pos.y += vel.y + g;

    if (pos.y >= h + 50) {
      pos.y = -random(100, 1000);
    } 
    if (pos.x >= w+40) {
      pos.x = -40;
    } else if (pos.x <= -40) {
      pos.x = w+40;
    }
  }

  public void draw() {
    fill(250, 250, 250);
    ellipse(pos.x, pos.y, radius, radius);
  }
}

class PhysicsSceneDelegate extends SceneDelegate {

  ArrayList<StringWarm> warmList;

  int warmCount = 10;
  int tailCount = 10;

  public int getWidth() {
    return 800;
  }

  public int getHeight() {
    return 600;
  }

  public int getFrameRate() {
    return 60;
  }

  void onStart() {
    int cx = getWidth() / 2;
    int cy = getHeight() / 2;

    warmList = new ArrayList();
    for (int i=0; i<warmCount; i++) {
      StringWarm warm = new StringWarm(cx, cy, tailCount);
      warm.setBound(getWidth(), getHeight());
      warmList.add(warm);
    }
  }

  void onUpdateWithDraw() {
    background(255);

    for (int i=0; i<warmCount; i++) {
      warmList.get(i).step();
      warmList.get(i).draw();
      warmList.get(i).randomForce();
    }
  }

  void onEnd() {
  }

  void onKeyPressed() {
  }

  void onMouseDown(int x, int y) {
  }

  void onMouseUp(int x, int y) {
  }

  void onMouseMove(int x, int y) {
  }
}

class Stage {

  protected int boundWidth;
  protected int boundHeight;

  protected final int stageType;

  Stage(int type) {
    stageType = type;
  }

  public int getType() {
    return stageType;
  }

  public void initialize(int w, int h) {
    boundWidth = w;
    boundHeight = h;
  }

  public void updateWithDraw() {
  }

  void keyPressed() {
  }

  void mouseDown(int x, int y) {
  }

  void mouseUp(int x, int y) {
  }

  void mouseMove(int x, int y) {
  }
}

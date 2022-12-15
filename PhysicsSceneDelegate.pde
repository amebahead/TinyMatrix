class PhysicsSceneDelegate extends SceneDelegate {

  private final StageFactory factory = new StageFactory();
  private Stage stage;

  public int getWidth() {
    return 1024;
  }

  public int getHeight() {
    return 786;
  }

  public int getFrameRate() {
    return 60;
  }

  void onStart() {
    stage = factory.create(StageType.STAGE_TYPE_SNOW);
    
    stage.initialize(getWidth(), getHeight());
  }

  void onUpdateWithDraw() {
    stage.updateWithDraw();
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

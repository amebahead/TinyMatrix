class StageSnow extends Stage {

  ArrayList<Snow> snowList;

  int snowCount = 500;

  StageSnow() {
    super(StageType.STAGE_TYPE_SNOW);
  }

  public void initialize(int w, int h) {
    super.initialize(w, h);

    snowList = new ArrayList();
    for (int i=0; i<snowCount; i++) {
      Snow snow = new Snow((int)random(20, w-20), (int)-random(100, h * 2), (int)random(3, 25));
      snowList.add(snow);
    }
  }

  public void updateWithDraw() {
    background(10);
    for (int i=0; i<snowCount; i++) {
      snowList.get(i).update(boundWidth, boundHeight);
      snowList.get(i).draw();
    }
  }
}

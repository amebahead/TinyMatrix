class StageStringWarm extends Stage {

  ArrayList<StringWarm> warmList;

  int warmCount = 10;
  int tailCount = 10;

  StageStringWarm() { 
    super(StageType.STAGE_TYPE_SPRING_WARM);
  }    

  public void initialize(int w, int h) {
    super.initialize(w, h);
    int cx = boundWidth / 2;
    int cy = boundHeight / 2;
    warmList = new ArrayList();
    for (int i=0; i<warmCount; i++) {
      StringWarm warm = new StringWarm(cx, cy, tailCount);
      warm.setBound(boundWidth, boundHeight);
      warmList.add(warm);
    }
  }

  public void updateWithDraw() {
    background(255);
    for (int i=0; i<warmCount; i++) {
      warmList.get(i).step();
      warmList.get(i).draw();
      warmList.get(i).randomForce();
    }
  }
}

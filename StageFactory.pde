class StageFactory {

  public Stage create(int type) {
    if (type == StageType.STAGE_TYPE_SPRING_WARM) {
      return new StageStringWarm();
    } else if (type == StageType.STAGE_TYPE_SNOW) {
      return new StageSnow();
    }
    return null;
  }
}

class Block {
  float x;
  float y;
  int size;
  float v;
  float m;

  Block(float xcoord, int xsize, float velocity, float mass) {
    int ycoord;
    size = xsize;
    ycoord = 350-size;
    x = xcoord;
    y = ycoord;
    v = velocity/timeSteps;
    m = mass;
  }

  boolean collide(Block bBlock) {
    return((x < bBlock.x + bBlock.size)&&(x + size > bBlock.x));
  }

  float calcVelocity(Block bBlock) {
    float MassSum = m + bBlock.m;
    float newV = v * ((m - bBlock.m)/MassSum);
    newV += ((2*bBlock.m)/MassSum) * bBlock.v;
    return newV;
  }

  void immovableObjectCollision() {
    if (x<=0) {
      v *= -1;
      Clack = true;

      counter++;
    }
  }

  void update() {
    x += v;
  }

  void show() {
    rect(x, y, size, size);
  }
}

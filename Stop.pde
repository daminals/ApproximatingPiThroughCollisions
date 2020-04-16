class Stop {
  int x=315;
  int y=470;


  Stop() {
  }

  void display() {
    if (!(dist(mouseX, mouseY, x, y)>30)) {
      fill(150, 30, 0);
      if (mousePressed) {
        crash();
        crash();
      }
    } else {
      fill(150, 75, 0);
    }
    noStroke();
    ellipse(x, y, 50, 50);

    fill(255);
    rect(298, 452, 33, 35);
    fill(0);

    stroke(1);
  }

  void crash() {
    start = false;
    counter = 0;
    file.stop();

    block1 = new Block(200, 10, 0, 1);
    block2 = new Block(400, 100, -(5), pow(100, (digits-1)));
  }
}

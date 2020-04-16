class Run {
  int x=250;
  int y=470;


  Run() {
  }

  void display() {
    if (!(dist(mouseX, mouseY, x, y)>30)) {
      fill(30, 100, 0);
      if (mousePressed)    start=true;
    } else {
      fill(85, 150, 0);
    }
    noStroke();
    ellipse(x, y, 50, 50);

    fill(255);
    triangle(238, 450, 238, 490, 270, 470);
    fill(0);

    stroke(1);
  }

  void run() {
    start = true;
    counter = 0;
    file.stop();
    if (digits == 1) {
      block1 = new Block(200, 50, 0, 1);
      block2 = new Block(400, 50, -(5), pow(100, (digits-1)));
    } else {
      block1 = new Block(200, 30, 0, 1);
      block2 = new Block(400, 100, -(5), pow(100, (digits-1)));
    }
  }
}

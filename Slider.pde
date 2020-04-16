class Slider {
  int y;
  int Swidth = 25;
  int circleX=15;

  Slider(int ypos) {
    y = ypos;
  }

  void update() {
    fill(230);
    noStroke();
    rect(0, y, 500, Swidth);
    stroke(1);
    fill(0);
    if (TouchMe()) {    
      circleX=mouseX;
    }
    ellipse(circleX, (y+(Swidth/2)), 20, 20);
    if (circleX>83) {
      digits=2;
      timeSteps=10;
      if (circleX>166) {
        digits=3;
        timeSteps=100;
        if(circleX>249){
        digits=4;
        timeSteps=1000;
        if(circleX>332){
        digits=5;
      timeSteps=10000;
    if(circleX>415){
    digits=6;
    timeSteps=100000;
    }}
        }
      }
    } else {
      digits=1;
      timeSteps=10;
    }
  }


  boolean TouchMe() {
    return ((dist(mouseX, mouseY, circleX, y)<25)&&mousePressed&&(mouseX>10&&mouseX<490));
  }
}

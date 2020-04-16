import processing.sound.*;

Slider slider;
Run button;
Stop btn;

boolean start = false;
boolean running = false;

SoundFile file;
boolean Clack = false;


Block block1;
Block block2;
int counter = 0;
int digits = 3;
int timeSteps = 1000;

void setup() {
  size(500, 500);
  slider = new Slider(351);
  button = new Run();  
  btn = new Stop();

  block1 = new Block(200, 10, 0, 1);
  block2 = new Block(400, 100, -(5), pow(100, (digits-1)));

  file = new SoundFile(this, "clack.wav");
}




void draw() {
  background(255);
  Clack = false;

  if (start) {

    for (int i=0; i<timeSteps; i++) {
      if (block1.collide(block2)) {
        file.play();
        fill(255, 0, 0);
        float v1 = block1.calcVelocity(block2);
        float v2 = block2.calcVelocity(block1);
        block1.v = v1;
        block2.v = v2;

        counter++;
        Clack = true;
      } else {
        fill(0);
      }

      block1.immovableObjectCollision();

      block1.update();
      block2.update();
    }
    if (digits>4) Clack = false;

    if (Clack) {
      file.play();
    }


    block1.show();
    block2.show();

    textSize(15);
  }
  slider.update();
  button.display();
  btn.display();

  if ((!running)&&(start)) {
    button.run();
    running = true;
  }
  if (!(dist(mouseX, mouseY, button.x, button.y)>30)) {
    if (mousePressed)    button.run();
  }
  rect(0, 350, 500, 0);


  textSize(50);
  text(counter, 10, 50);
  text("Digits: "+digits, 5, 490);
}

/* OpenProcessing Tweak of *@*http://www.openprocessing.org/sketch/23698*@* */
/* !do not delete the line above, required for linking your tweak if you upload again */

/* red dot after mouse click */

World w;
color backg;

void setup() {
  size(192,157);
  w = new World();
    colorMode(RGB);
    backg=color(200);
}

void draw() {

  background (backg);
  w.update();
  
  w.display();
}

void mouseClicked() {
  w.newDrop(new PVector(mouseX, mouseY));
}

void keyPressed() {
  w.newBall(new PVector(mouseX, mouseY), 30);
}

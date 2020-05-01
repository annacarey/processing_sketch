float rVal;
float gVal;
float bVal;
int rectWidth;
int rectHeight;
boolean horizontal;

void setup() {
  fullScreen();
  frameRate(500);
  background(0);
  noStroke();
  rectWidth = width;
  rectHeight = 30;
  horizontal = true;
}

void draw () {
  if (horizontal == true) {
    rVal = mouseX;
    gVal = mouseY/2;
    bVal = mouseY;
    rectWidth = width;
    rectHeight = 30;
  } else {
    rVal = mouseY;
    gVal = mouseX;
    bVal = mouseX/2;
    rectWidth = 30;
    rectHeight = height;
  }
  fill(rVal, gVal, bVal, 120);
  rect(mouseX, mouseY, rectWidth, rectHeight);
}

void mouseClicked() {
    horizontal = !horizontal;
}

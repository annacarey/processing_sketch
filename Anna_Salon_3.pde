PImage green;
PImage yellow;
PImage purple;
PImage blue;
PImage red;
PImage pink;
PImage saveButton;

boolean pinkPressed = false;
boolean pinkHover = false;

boolean purplePressed = false;
boolean purpleHover = false;

boolean bluePressed = false;
boolean blueHover = false;

boolean greenPressed = false;
boolean greenHover = false;

boolean redPressed = false;
boolean redHover = false;

boolean yellowPressed = false;
boolean yellowHover = false;

boolean eraserPressed = false;
boolean eraserHover = false;

boolean saveHover = false;

int x = 8;
int y;

String fileName = "Artsy Artist";

void setup() {
  fullScreen();
  frameRate(500);
  green = loadImage("Artsy_Logo green.png");
  yellow = loadImage("Artsy_Logo yellow.png");
  purple = loadImage("Artsy_Logo purple.png");
  blue = loadImage("Artsy_Logo blue.png");
  red = loadImage("Artsy_Logo red.png");
  pink = loadImage("Artsy_Logo pink.png");
  saveButton = loadImage("Save Button.png");
  background(0);
  strokeWeight(2);
  
  image(saveButton, 40, 775);
}



void draw() {
  tint(255, 100) ;
  update(mouseX, mouseY);
  
  //pink
  if (pinkPressed) {
    stroke(0,255,0);
  } else {
    stroke(255, 0, 204);
  }
  fill(255, 0, 204);
  rect(40, 40, 70, 70);
  if (pinkHover) {
    stroke(0,255,0);
    fill(255, 0, 204);
  rect(40, 40, 70, 70);
  }
  
  //purple
  if (purplePressed) {
    stroke(255,255,0);
  } else {
    stroke(110,31,255);
  }
  fill(110,31,255);
  rect(40, 145, 70, 70);
  if (purpleHover) {
    stroke(255,255,0);
    fill(110,31,255);
  rect(40, 145, 70, 70);
  }
  
  //blue
  if (bluePressed) {
    stroke(255,0,0);
  } else {
    stroke(0,255,255);
  }
  fill(0,255,255);
  rect(40, 250, 70, 70);
  if (blueHover) {
    stroke(255,0,0);
    fill(0,255,255);
  rect(40, 250, 70, 70);
  }
  
  //green
  if (greenPressed) {
    stroke(255, 0, 204);
  } else {
    stroke(0,255,0);
  }
  fill(0,255,0);
  rect(40, 355, 70, 70);
  if (greenHover) {
    stroke(255, 0, 204);
    fill(0,255,0);
  rect(40, 355, 70, 70);
  }
  
  //red
  if (redPressed) {
    stroke(0,255,255);
  } else {
    stroke(255,0,0);
  }
  fill(255,0,0);
  rect(40, 460, 70, 70);
  if (redHover) {
    stroke(0,255,255);
    fill(255,0,0);
  rect(40, 460, 70, 70);
  }
  
  //yellow
  if (yellowPressed) {
    stroke(110,31,255);
  } else {
    stroke(255,255,0);
  }
  fill(255,255,0);
  rect(40, 565, 70, 70);
  if (yellowHover) {
    stroke(110,31,255);
    fill(255,255,0);
  rect(40, 565, 70, 70);
  }

  //eraser
  if (eraserPressed) {
    stroke(110,31,255);
  } else {
    stroke(255);
  }
  fill(0);
  rect(40, 670, 70, 70);
  if (eraserHover) {
    stroke(110,31,255);
    fill(0);
  rect(40, 670, 70, 70);
  }
  
  //save
  if (saveHover) {
    stroke(0,255,0);
    noFill();
  rect(40, 775, 70, 70);
  } else {
    stroke(0);
    noFill();
  rect(40, 775, 70, 70);
  }
  
  if (mouseX > 170 && mousePressed == true) {
  if (x == 0) {
    image(pink, mouseX, mouseY);
  }
  
  if (x == 1) {
    image(purple, mouseX, mouseY);
    
  }
  if (x == 2) {
    image(blue, mouseX, mouseY);
  }
  if (x == 3) {
    image(green, mouseX, mouseY);
  }
  if (x == 4) {
    image(red, mouseX, mouseY);
  }
  if (x == 5) {
    image(yellow, mouseX, mouseY);
  }
  if (x == 6) {
    noStroke();
    fill(0,0,0, 255);
    ellipse(mouseX, mouseY, 120, 120);
  }
  }
 
}

void mousePressed() {
  //pink
  if (mouseX > 40 && mouseX < 110 && mouseY > 40 && mouseY <110) {
    x = 0;
    pinkPressed = true;
    purplePressed = false;
    bluePressed = false;
    greenPressed = false;
    redPressed = false;
    yellowPressed = false;
    eraserPressed = false;
  } 
  //purple
  else if (mouseX > 40 && mouseX < 110 && mouseY > 145 && mouseY <215) {
    x = 1;
    purplePressed = true;
    pinkPressed = false;
    bluePressed = false;
    greenPressed = false;
    redPressed = false;
    yellowPressed = false;
    eraserPressed = false;
  }
  //blue
  if (mouseX > 40 && mouseX < 110 && mouseY > 250 && mouseY <320) {
    x = 2;
    bluePressed = true;
    pinkPressed = false;
    purplePressed = false;
    greenPressed = false;
    redPressed = false;
    yellowPressed = false;
    eraserPressed = false;
  }
  //green
  if (mouseX > 40 && mouseX < 110 && mouseY > 355 && mouseY <425) {
    x = 3;
    greenPressed = true;
    bluePressed = false;
    pinkPressed = false;
    purplePressed = false;
    redPressed = false;
    yellowPressed = false;
    eraserPressed = false;
  }
  //red
  if (mouseX > 40 && mouseX < 110 && mouseY > 460 && mouseY <530) {
    x = 4;
    redPressed = true;
    greenPressed = false;
    bluePressed = false;
    pinkPressed = false;
    purplePressed = false;
    yellowPressed = false;
    eraserPressed = false;
  }
  //yellow
  if (mouseX > 40 && mouseX < 110 && mouseY > 565 && mouseY <635) {
    x = 5;
    yellowPressed = true;
    redPressed = false;
    greenPressed = false;
    bluePressed = false;
    pinkPressed = false;
    purplePressed = false;
    eraserPressed = false;
  }
  //erase
  if (mouseX > 40 && mouseX < 110 && mouseY > 670 && mouseY <740) {
    x = 6;
    eraserPressed = true;
    yellowPressed = false;
    redPressed = false;
    greenPressed = false;
    bluePressed = false;
    pinkPressed = false;
    purplePressed = false;
  }
  if (mouseX > 40 && mouseX < 110 && mouseY > 775 && mouseY <845){
    y++;
    save(fileName + " " + str(y) + ".jpg");
    fill(0, 0, 0);
    noStroke();
    rect(115, 0, 3000, 3000);
  }

}

boolean pinkHover(int x, int y) {
  if (x >40 && x <110 && y >40 && y <110) {
    return true;
  } else {
    return false;
}
}

boolean purpleHover(int x, int y) {
  if (x >40 && x <110 && y >145 && y <215) {
    return true;
  } else {
    return false;
}
}

boolean blueHover(int x, int y) {
  if (x >40 && x <110 && y >250 && y <320) {
    return true;
  } else {
    return false;
}
}

boolean greenHover(int x, int y) {
  if (x >40 && x <110 && y >355 && y <425) {
    return true;
  } else {
    return false;
}
}

boolean redHover(int x, int y) {
  if (x >40 && x <110 && y >460 && y <530) {
    return true;
  } else {
    return false;
}
}

boolean yellowHover(int x, int y) {
  if (x >40 && x <110 && y >565 && y <635) {
    return true;
  } else {
    return false;
}
}

boolean eraserHover(int x, int y) {
  if (x >40 && x <110 && y >670 && y <740) {
    return true;
  } else {
    return false;
}
}

boolean saveHover(int x, int y) {
  if (x >40 && x <110 && y >775 && y <845) {
    return true;
  } else {
    return false;
}
}


void update(int x, int y) {
  if (pinkHover(mouseX, mouseY)){
    pinkHover = true;
  } else {
    pinkHover = false;
  }
  if (purpleHover(mouseX, mouseY)) {
    purpleHover = true;
  } else {
    purpleHover = false;
  }
 if (blueHover(mouseX, mouseY)) {
    blueHover = true;
  } else {
    blueHover = false;
  }
  if (greenHover(mouseX, mouseY)) {
    greenHover = true;
  } else {
    greenHover = false;
  }
  if (redHover(mouseX, mouseY)) {
    redHover = true;
  } else {
    redHover = false;
  }
  if (yellowHover(mouseX, mouseY)) {
    yellowHover = true;
  } else {
    yellowHover = false;
  }
  if (eraserHover(mouseX, mouseY)) {
    eraserHover = true;
  } else {
    eraserHover = false;
  }
  if (saveHover(mouseX, mouseY)) {
    saveHover = true;
  } else {
    saveHover = false;
  }
}

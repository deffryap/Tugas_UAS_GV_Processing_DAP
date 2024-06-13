PShape dap;
float angle = 0;
float scale = 1;
boolean mirror = false;
int posX = 75, posY = 250;

boolean moveUp, moveDown, moveLeft, moveRight;
boolean rotateLeft, rotateRight, rotateClockwise, rotateCounterClockwise;
boolean scaleUp, scaleDown;
boolean flipHorizontal;

void setup(){
  size(1000, 1000, P2D);
  
  //DAP
  dap = createShape(GROUP);
  
  //Huruf I
  PShape d = createShape();
  d.beginShape();
  d.vertex(0, 0);
  d.vertex(0, 200);
  d.vertex(40, 200);
  d.vertex(40, 0);
  d.endShape(CLOSE);
  
  //Huruf D
  PShape d2 = createShape();
  d2.beginShape();
  d2.vertex(40, 0);
  d2.bezierVertex(200, -50, 200, 250, 40, 200);
  d2.vertex(40, 140);
  d2.bezierVertex(140, 200, 140, 0, 40, 60);
  d2.endShape(CLOSE);
  
  //Huruf A
  PShape a = createShape();
  a.beginShape();
  a.vertex(250, 0);
  a.vertex(175, 200);  
  a.vertex(225, 200); 
  a.vertex(275, 50);
  a.vertex(325, 200);
  a.vertex(375, 200);
  a.vertex(300, 0);
  a.endShape(CLOSE);
  
  //Huruf -
  PShape a2 = createShape();
  a2.beginShape();
  a2.vertex(252, 120);
  a2.vertex(242, 150);  
  a2.vertex(308, 150); 
  a2.vertex(298, 120);
  a2.endShape(CLOSE);
  
  //Huruf I
  PShape p = createShape();
  p.beginShape();
  p.vertex(400, 0);
  p.vertex(400, 200);
  p.vertex(440, 200);
  p.vertex(440, 0);
  p.endShape(CLOSE);
  
  //Huruf P
  PShape p2 = createShape();
  p2.beginShape();
  p2.vertex(440, 0); 
  p2.bezierVertex(550, -37.5, 550, 187.5, 440, 150); 
  p2.vertex(440, 105); 
  p2.bezierVertex(505, 150, 505, 0, 440, 45); 
  p2.endShape(CLOSE);
  
  dap.addChild(d);
  dap.addChild(d2);
  dap.addChild(a);
  dap.addChild(a2);
  dap.addChild(p);
  dap.addChild(p2);
}

void draw(){
 noStroke();
 background(204);
 translate(posX, posY);
 if (mirror) scale(-1, 1);
 scale(scale);
 rotate(angle);
 shape(dap);
 
  if (moveUp) {
    posY -= 5;
  }
  if (moveDown) {
    posY += 5;
  }
  if (moveLeft) {
    posX -= 5;
  }
  if (moveRight) {
    posX += 5;
  }
  if (rotateClockwise) {
    angle += 0.1;
  }
  if (rotateCounterClockwise) {
    angle -= 0.1;
  }
  if (scaleUp) {
    scale += 0.01;
  }
  if (scaleDown) {
    scale -= 0.01;
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) moveUp = true;
    if (keyCode == DOWN) moveDown = true;
    if (keyCode == LEFT) moveLeft = true;
    if (keyCode == RIGHT) moveRight = true;
  } else {
    if (key == 'q') rotateCounterClockwise = true;
    if (key == 'e') rotateClockwise = true;
    if (key == ']') scaleUp = true;
    if (key == '[') scaleDown = true;
    if (key == 'm') flipHorizontal = true;
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == UP) moveUp = false;
    if (keyCode == DOWN) moveDown = false;
    if (keyCode == LEFT) moveLeft = false;
    if (keyCode == RIGHT) moveRight = false;
  } else {
    if (key == 'q') rotateCounterClockwise = false;
    if (key == 'e') rotateClockwise = false;
    if (key == ']') scaleUp = false;
    if (key == '[') scaleDown = false;
    if (key == 'm') {
      flipHorizontal = false;
      mirror = !mirror;
    }
  }
}

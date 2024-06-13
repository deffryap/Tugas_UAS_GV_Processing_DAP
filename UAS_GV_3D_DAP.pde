float pitch = 0;
float yaw = 0;
float roll = 0;
boolean upPressed, downPressed, leftPressed, rightPressed, ltPressed, gtPressed;
PShape dap;

// DAP

void setup() {
  size(1000, 1000, P3D);
  dap = createShape(GROUP);

  //Huruf ID
  PShape idepan = createShape();
  idepan.beginShape();
  idepan.vertex(0, 0, 0);
  idepan.vertex(0, 200, 0);
  idepan.vertex(40, 200, 0);
  idepan.vertex(40, 0, 0);
  idepan.endShape(CLOSE);
  
  PShape ibelakang = createShape();
  ibelakang.beginShape();
  ibelakang.vertex(0, 0, -40);
  ibelakang.vertex(0, 200, -40);
  ibelakang.vertex(40, 200, -40);
  ibelakang.vertex(40, 0, -40);
  ibelakang.endShape(CLOSE);
  
  // cara baca kiri-kiri kanan-kanan
  PShape i1 = createShape();
  i1.beginShape();
  addDepth(i1, 0, 200, 0, 40, 200, 0, 40, 200, -40, 0, 200, -40);
  i1.endShape(CLOSE);
  
  PShape i2 = createShape();
  i2.beginShape();
  addDepth(i2, 0, 0, 0, 40, 0, 0, 40, 0, -40, 0, 0, -40);
  i2.endShape(CLOSE);
  
  PShape i3 = createShape();
  i3.beginShape();
  addDepth(i3, 0, 0, 0, 0, 200, 0, 0, 200, -40, 0, 0, -40);
  i3.endShape(CLOSE);
  
  PShape i4 = createShape();
  i4.beginShape();
  addDepth(i4, 40, 200, 0, 40, 0, 0, 40, 0, -40, 40, 200, -40);
  i4.endShape(CLOSE);

  dap.addChild(idepan);
  dap.addChild(ibelakang);
  dap.addChild(i1);
  dap.addChild(i2);
  dap.addChild(i3);
  dap.addChild(i4);
  
  //Huruf D
  PShape ddepan = createShape();
  ddepan.beginShape();
  ddepan.vertex(40, 0, 0);
  ddepan.bezierVertex(200, -50, 0, 200, 250, 0, 40, 200, 0);
  ddepan.vertex(40, 140, 0);
  ddepan.bezierVertex(140, 200, 0, 140, 0, 0, 40, 60, 0);
  ddepan.endShape(CLOSE);
  
  PShape dbelakang = createShape();
  dbelakang.beginShape();
  dbelakang.vertex(40, 0, -40);
  dbelakang.bezierVertex(200, -50, -40,200, 250, -40, 40, 200, -40);
  dbelakang.vertex(40, 140, -40);
  dbelakang.bezierVertex(140, 200, -40, 140, 0, -40, 40, 60, -40);
  dbelakang.endShape(CLOSE);
  
  PShape d1 = createShape();
  d1.beginShape();
  d1.vertex(40, 0, 0);
  d1.bezierVertex(200, -50, 0, 200, 250, 0, 40, 200, 0);
  d1.vertex(40, 200, -40);
  d1.bezierVertex(200, 250, -40, 200, -50, -40, 40, 0, -40);
  d1.vertex(40, 0, 0);
  d1.endShape(CLOSE);
  
  PShape d2 = createShape();
  d2.beginShape();
  d2.vertex(40, 140, 0);
  d2.bezierVertex(140, 200, 0, 140, 0, 0, 40, 60, 0);
  d2.vertex(40, 60, -40);
  d2.bezierVertex(140, 0, -40, 140, 200, -40, 40, 140, -40);
  d2.vertex(40, 140, 0);
  d2.endShape(CLOSE);
   
  dap.addChild(ddepan);
  dap.addChild(dbelakang);
  dap.addChild(d1);
  dap.addChild(d2);

  //Huruf A
  PShape adepan = createShape();
  adepan.beginShape();
  adepan.vertex(250, 0, 0);
  adepan.vertex(175, 200, 0);  
  adepan.vertex(225, 200, 0);  
  adepan.vertex(275, 50, 0);
  adepan.vertex(325, 200, 0);
  adepan.vertex(375, 200, 0);
  adepan.vertex(300, 0, 0);
  adepan.endShape(CLOSE);
  
  PShape abelakang = createShape();
  abelakang.beginShape();
  abelakang.vertex(252, 120, 0);
  abelakang.vertex(242, 150, 0);
  abelakang.vertex(308, 150, 0);
  abelakang.vertex(298, 120, 0);
  abelakang.endShape(CLOSE);
  
  PShape a1 = createShape();
  a1.beginShape();
  a1.vertex(250, 0, -40);
  a1.vertex(175, 200, -40);  
  a1.vertex(225, 200, -40);  
  a1.vertex(275, 50, -40);
  a1.vertex(325, 200, -40);
  a1.vertex(375, 200, -40);
  a1.vertex(300, 0, -40);
  a1.endShape(CLOSE);
  
  PShape a2 = createShape();
  a2.beginShape();
  a2.vertex(252, 120, -40);
  a2.vertex(242, 150, -40);
  a2.vertex(308, 150, -40);
  a2.vertex(298, 120, -40);
  a2.endShape(CLOSE);
  
  // cara baca kiri-kiri kanan-kanan
  PShape a3 = createShape();
  a3.beginShape();
  addDepth(a3, 250, 0, 0, 175, 200, 0, 175, 200, -40, 250, 0, -40);
  a3.endShape(CLOSE);
   
  PShape a4 = createShape();
  a4.beginShape();
  addDepth(a4, 175, 200, 0, 225, 200, 0, 225, 200, -40, 175, 200, -40);
  a4.endShape(CLOSE);
 
  PShape a5 = createShape();
  a5.beginShape();
  addDepth(a5, 225, 200, 0, 275, 50, 0, 275, 50, -40, 225, 200, -40);
  a5.endShape(CLOSE);
  
  PShape a6 = createShape();
  a6.beginShape();
  addDepth(a6, 275, 50, 0, 325, 200, 0, 325, 200, -40, 275, 50, -40);
  a6.endShape(CLOSE);
  
  PShape a7 = createShape();
  a7.beginShape();
  addDepth(a7, 325, 200, 0, 375, 200, 0, 375, 200, -40, 325, 200, -40);
  a7.endShape(CLOSE);
  
  PShape a8 = createShape();
  a8.beginShape();
  addDepth(a8, 375, 200, 0, 300, 0, 0, 300, 0, -40, 375, 200, -40);
  a8.endShape(CLOSE);
  
  PShape a9 = createShape();
  a9.beginShape();
  addDepth(a9, 298, 0, 0, 252, 0, 0, 252, 0, -40, 298, 0, -40);
  a9.endShape(CLOSE);
  
  PShape a10 = createShape();
  a10.beginShape();
  addDepth(a10, 252, 120, 0, 298, 120, 0, 298, 120, -40, 252, 120, -40);
  a10.endShape(CLOSE);
  
  PShape a11 = createShape();
  a11.beginShape();
  addDepth(a11, 242, 150, 0, 308, 150, 0, 308, 150, -40, 242, 150, -40);
  a11.endShape(CLOSE);
  
  dap.addChild(adepan);
  dap.addChild(abelakang);
  dap.addChild(a1);
  dap.addChild(a2);
  dap.addChild(a3);
  dap.addChild(a4);
  dap.addChild(a5);
  dap.addChild(a6);
  dap.addChild(a7);
  dap.addChild(a8);
  dap.addChild(a9);
  dap.addChild(a10);
  dap.addChild(a11);
  
  //Huruf IP
  PShape ipdepan = createShape();
  ipdepan.beginShape();
  ipdepan.vertex(400, 0, 0);
  ipdepan.vertex(400, 200, 0);
  ipdepan.vertex(440, 200, 0);
  ipdepan.vertex(440, 0, 0);
  ipdepan.endShape(CLOSE);
  
  PShape ipbelakang = createShape();
  ipbelakang.beginShape();
  ipbelakang.vertex(400, 0, -40);
  ipbelakang.vertex(400, 200, -40);
  ipbelakang.vertex(440, 200, -40);
  ipbelakang.vertex(440, 0, -40);
  ipbelakang.endShape(CLOSE);
  
  // cara baca kiri-kiri kanan-kanan
  PShape ip1 = createShape();
  ip1.beginShape();
  addDepth(ip1, 400, 200, 0, 440, 200, 0, 440, 200, -40, 400, 200, -40);
  ip1.endShape(CLOSE);
  
  PShape ip2 = createShape();
  ip2.beginShape();
  addDepth(ip2, 400, 0, 0, 440, 0, 0, 440, 0, -40, 400, 0, -40);
  ip2.endShape(CLOSE);
  
  PShape ip3 = createShape();
  ip3.beginShape();
  addDepth(ip3, 400, 0, 0, 400, 200, 0, 400, 200, -40, 400, 0, -40);
  ip3.endShape(CLOSE);
  
  PShape ip4 = createShape();
  ip4.beginShape();
  addDepth(ip4, 440, 200, 0, 440, 0, 0, 440, 0, -40, 440, 200, -40);
  ip4.endShape(CLOSE);

  dap.addChild(ipdepan);
  dap.addChild(ipbelakang);
  dap.addChild(ip1);
  dap.addChild(ip2);
  dap.addChild(ip3);
  dap.addChild(ip4);
    
  //Huruf P
  PShape pdepan = createShape();
  pdepan.beginShape();
  pdepan.vertex(440, 0, 0);
  pdepan.bezierVertex(550, -37.5, 0, 550, 187.5, 0, 440, 150, 0);
  pdepan.vertex(440, 105, 0);
  pdepan.bezierVertex(505, 150, 0, 505, 0, 0, 440, 45, 0);
  pdepan.endShape(CLOSE);
  
  PShape pbelakang = createShape();
  pbelakang.beginShape();
  pbelakang.vertex(440, 0, -40);
  pbelakang.bezierVertex(550, -37.5, -40, 550, 187.5, -40, 440, 150, -40);
  pbelakang.vertex(440, 105, -40);
  pbelakang.bezierVertex(505, 150, -40, 505, 0, -40, 440, 45, -40);
  pbelakang.endShape(CLOSE);
  
  PShape p1 = createShape();
  p1.beginShape();
  p1.vertex(440, 0, 0);
  p1.bezierVertex(550, -37.5, 0, 550, 187.5, 0, 440, 150, 0);
  p1.vertex(440, 150, -40);
  p1.bezierVertex(550, 187.5, -40, 550, -37.5, -40, 440, 0, -40);
  p1.vertex(440, 0, 0);
  p1.endShape(CLOSE);

  PShape p2 = createShape();
  p2.beginShape();
  p2.vertex(440, 105, 0);
  p2.bezierVertex(505, 150, 0, 505, 0, 0, 440, 45, 0);
  p2.vertex(440, 45, -40);
  p2.bezierVertex(505, 0, -40, 505, 150, -40, 440, 105, -40);
  p2.vertex(440, 105, 0);
  p2.endShape(CLOSE);
   
  dap.addChild(pdepan);
  dap.addChild(pbelakang);
  dap.addChild(p1);
  dap.addChild(p2);
  centerObject(dap);
}

void draw() {
  translate(width/2, height/2, 0);
  background(204);
  noStroke();
  
  if (upPressed) {
    pitch -= radians(1);
  }
  if (downPressed) {
    pitch += radians(1);
  }
  if (leftPressed) {
    yaw -= radians(1);
  }
  if (rightPressed) {
    yaw += radians(1);
  }
  
  if (ltPressed) {
    roll -= radians(1);
  }
  if (gtPressed) {
    roll += radians(1);
  }

  pitch = pitch % TWO_PI;
  yaw = yaw % TWO_PI;
  roll = roll % TWO_PI;
  
  rotateX(pitch);
  rotateY(yaw);
  rotateZ(roll);
  shape(dap);
}

void keyPressed() {
  if (keyCode == UP) {
    upPressed = true;
  }
  if (keyCode == DOWN) {
    downPressed = true;
  }
  if (keyCode == LEFT) {
    leftPressed = true;
  }
  if (keyCode == RIGHT) {
    rightPressed = true;
  }
  if (key == '[') {
    ltPressed = true;
  }
  if (key == ']') {
    gtPressed = true;
  }
}

void keyReleased() {
  if (keyCode == UP) {
    upPressed = false;
  }
  if (keyCode == DOWN) {
    downPressed = false;
  }
  if (keyCode == LEFT) {
    leftPressed = false;
  }
  if (keyCode == RIGHT) {
    rightPressed = false;
  }
  if (key == '[') {
    ltPressed = false;
  }
  if (key == ']') {
    gtPressed = false;
  }
}

void addDepth(PShape dap, float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3, float x4, float y4, float z4){
  dap.vertex(x1, y1, z1);
  dap.vertex(x2, y2, z2);
  dap.vertex(x3, y3, z3);
  dap.vertex(x4, y4, z4);
  dap.vertex(x1, y1, z1);
}

void centerObject(PShape obj) {
  float minX = Float.MAX_VALUE;
  float minY = Float.MAX_VALUE;
  float minZ = Float.MAX_VALUE;
  float maxX = Float.MIN_VALUE;
  float maxY = Float.MIN_VALUE;
  float maxZ = Float.MIN_VALUE;
  
  for (int i = 0; i < obj.getChildCount(); i++) {
    PShape child = obj.getChild(i);
    for (int j = 0; j < child.getVertexCount(); j++) {
      PVector v = child.getVertex(j);
      minX = min(minX, v.x);
      minY = min(minY, v.y);
      minZ = min(minZ, v.z);
      maxX = max(maxX, v.x);
      maxY = max(maxY, v.y);
      maxZ = max(maxZ, v.z);
    }
  }
  
  float centerX = (minX + maxX) / 2;
  float centerY = (minY + maxY) / 2;
  float centerZ = (minZ + maxZ) / 2;
  
  obj.resetMatrix();
  obj.translate(-centerX, -centerY, -centerZ);
}


int stretchX;
int stretchY;
float mouseDist;
PImage bee;
void setup() {
  size(1000, 1000);
  background(random(45, 65), random(144, 199), random(60, 81));
  bee = loadImage("bee_png.png");
}


void draw() {
  mouseDist = dist(width/2, height/2, mouseX, mouseY);
  if (mouseDist > 450){
    background(random(45, 65), random(144, 199), random(60, 81));
    strokeWeight(10);
    stroke(random(10, 240), random(10, 240), random(10, 240));
    text("LOST BEE", 480, 800);
 }
  pushMatrix();
  translate(width/2, height/2);
  for ( int i=0; i<100; i++) {
    ellipseMode(CORNER);
    rotate(radians(mouseX/2));
    noStroke();
    fill(255, random(60, 140), random(60, 140), random (5, 100));
    ellipse(-15, -15, 50, mouseY);
    fill(random(240, 255), random(180, 220), random(0, 120), random(5, 80));
    ellipse(-15, -15, 35, mouseY/2);
  }

  popMatrix();
  
  pushMatrix();
  translate(width/2, height/2);
  for ( int i=0; i<100; i++) {
    ellipseMode(CORNER);
    rotate(radians(mouseX/4));
    noStroke();
    fill(random(150, 180), random(180, 120), random(240, 255), random(5, 40));
    ellipse(-15, -15, random(10, 40), mouseY/1.5);
  }

  popMatrix();
  
  pushMatrix();
  translate(width/2, height/2);
  for ( int i=0; i<100; i++) {
    ellipseMode(CORNER);
    rotate(radians(mouseX));
    noStroke();
    fill(64, 30, 30);
    ellipse(-30, -30, 40, 40);
    fill(112, 74, 58);
    ellipse(-30, -30, 35, 35);
    fill(46, 24, 0);
    ellipse(-30, -30, 17, 17);
  }
  popMatrix();
  
  for ( int i=0; i<100; i++); {
  image(bee, mouseX, mouseY, 50, 50);
  }
  
}

void keyPressed () {

save ("LostBee.jpg");

}

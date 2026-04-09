//when will gta6 come out
color blue = #3f89ca;
color red = #c1121f;
color yellow = #ffb703;
color green = #adc178;
color white = #ffffff;
color orange = #ee6123;

void setup() {
  size (1000, 1000);
  background(255);
}

void draw() {
  //toolbar
  stroke(0);
  fill(93, 92, 92);
  rect(0, 0, 1000, 200);
  
  
  //buttons
  tactile(50, 50, 100, 100);
  fill(blue);
  rect(50, 50, 50, 50);
  
  tactile(150, 50, 100, 100);
  fill(red);
  rect(150, 50, 50, 50);
  
  
}

void mouseDragged() {
  line(pmouseX, pmouseY, mouseX, mouseY);
}

void tactile (int x, int y, int w, int h) {
  if (mouseX > x && mouseY > y && mouseX < w && mouseY < h ) {
    stroke(255);
  } else {
    stroke(0);
  }
}

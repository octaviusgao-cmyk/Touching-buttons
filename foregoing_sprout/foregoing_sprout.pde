//when will gta6 come out
color blue = #3f89ca;
color red = #c1121f;
color yellow = #ffb703;
color green = #adc178;
color white = #ffffff;
color orange = #ee6123;
color indicator;

float thickness;
float sliderX;
float r;

PImage geralt;

void setup() {
  size (1000, 1000);
  background(255);
  sliderX = 350;
  indicator = 20;
  geralt = loadImage("geralt.jpeg");
}

void draw() {
  //toolbar
  stroke(0);
  strokeWeight(1);
  fill(93, 92, 92);
  rect(0, 0, 1000, 200);
  
  tactile(500, 25, 650, 175);
  rect(498, 24, 155, 155);
  image(geralt, 500, 25, 150, 150);
  
  //buttons
  tactile(50, 50, 100, 100);
  fill(blue);
  rect(50, 50, 50, 50);
  

  tactile(150, 50, 200, 100);
  fill(red);
  rect(150, 50, 50, 50);

  tactile(250, 50, 300, 100);
  fill(yellow);
  rect(250, 50, 50, 50);

  tactile(50, 100, 100, 175);
  fill(white);
  rect(50, 125, 50, 50);

  tactile(100, 125, 200, 175);
  fill(green);
  rect(150, 125, 50, 50);

  tactile(250, 125, 300, 175);
  fill(orange);
  rect(250, 125, 50, 50);


  //slider
  
  strokeWeight(5);
  stroke(0);
  line(350, 125, 450, 125);
  sliderTactile();
  fill(indicator);
  circle(sliderX, 125, thickness);
  stroke(0);
  
}

void checkcircle(int x, int y, int w, int z, color s) {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + z) {
  indicator = s;  
  }
    
} 
void slider() {
  pushMatrix();
  if (mouseX > 350 && mouseX < 450 && mouseY > 115 && mouseY < 135) {
    sliderX = mouseX;
   
  }
  thickness = map(sliderX, 350, 450, 4, 20);
  popMatrix();
}


void sliderTactile() {
  if (mouseX > 350 && mouseX < 450 && mouseY > 115 && mouseY < 135) {
    stroke(255);
  } else
    stroke(0);
  {
  }
}

void mouseReleased() {
  slider();
  checkcircle(50, 50, 50, 50, blue);
  checkcircle(150, 50, 50, 50, red);
  checkcircle(250, 50, 50, 50, yellow);
  checkcircle(50, 125, 50, 50, white);
  checkcircle(150, 125, 50, 50, green);
  checkcircle(250, 125, 50, 50, orange);
}



void mouseDragged() {
  strokeWeight(thickness);
  stroke(indicator);
  line(pmouseX, pmouseY, mouseX, mouseY);
  slider();
}

void tactile (int x, int y, int w, int h) {
  if (mouseX > x && mouseY > y && mouseX < w && mouseY < h ) {
    stroke(255);
  } else {
    stroke(0);
  }
}

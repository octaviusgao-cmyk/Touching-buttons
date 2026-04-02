//back to witcher 3
color cool = #7ADFBB;
float slider;


void setup() {
  size(900, 900);
  strokeWeight(5);
  stroke(cool);
  fill(cool);
  slider = 400;
}

void draw() {
  background(0);
  
  line(200, 100, 200, 800);
  circle(200, slider, 100);
}

void mouseReleased()

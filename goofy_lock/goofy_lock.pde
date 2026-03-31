//metal gear solid 3 is next up
//pallette of colours
color low = #023E8A;
color mid = #48CAE4;
color high = #90E0EF;
color bg = #CAF0F8;
color stroke = #080808;

color metal;

void setup () {
  size(900, 700);
  strokeWeight(5);
  metal = bg;
  stroke(low);
}

void draw() {
  background(metal);

  if (dist(100, 100, mouseX, mouseY) < 75) {
    stroke(stroke);
  } else {
    stroke(255);
  }
  
  fill(low);
  
  ellipse(100, 100, 150, 150);

  if (dist(450, 100, mouseX, mouseY) < 75) {
    stroke(stroke);
  } else {
    stroke(255);
  }
  fill(mid);
  
  ellipse(450, 100, 150, 150);


  if (dist(800, 100, mouseX, mouseY) < 75) {
    stroke(stroke);
  } else {
    stroke(255);
  }

  fill(high);
  
  ellipse(800, 100, 150, 150);
}
void mouseReleased() {
  if (dist(100, 100, mouseX, mouseY) < 75) {
    metal = low;
  }
  if (dist(450, 100, mouseX, mouseY) < 75) {
    metal = mid;
  }

  if (dist(800, 100, mouseX, mouseY) < 75) {
    metal = high;
  }
}

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

  tactile (50, 100, 200, 250);
  fill(low);
  rect(50, 100, 150, 150);

  tactile (350, 100, 500, 250);
  fill(mid);
  rect(350, 100, 150, 150);


  tactile (650, 100, 800, 250);
  fill(high);
  rect(650, 100, 150, 150);
}

void tactile (int x, int y, int w, int h) {
  if (mouseX > x && mouseY > y && mouseX < w && mouseY < h ) {
    stroke(stroke);
  } else {
    stroke(255);
  }
}
void mouseReleased() {
  if (mouseX > 50 && mouseX < 200 && mouseY > 100 && mouseY < 250) {
    metal = low;
  }
  if (mouseX > 350 && mouseX < 450 && mouseY > 100 && mouseY < 250) {
    metal = mid;
  }
  if (mouseX > 650 && mouseX < 800 && mouseY > 100 && mouseY < 250) {
    metal = high;
  }
}

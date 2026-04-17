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
float sizeX;
float sizeY;

PImage geralt;
PImage batman;
boolean geralton;
boolean batmanon;

void setup() {
  size (1000, 1000);
  background(255);
  sliderX = 350;
  indicator = 20;
  geralt = loadImage("geralt.jpeg");
  batman = loadImage("batman.png");
}
void draw() {
  //toolbar
  stroke(0);
  strokeWeight(1);
  fill(93, 92, 92);
  rect(0, 0, 1000, 200);


  if (geralton == true) {
    strokeWeight(20);
  } else {
    stroke(0);
  }



  tactile(500, 25, 650, 175);
  rect(500, 25, 150, 150);
  image(geralt, 500, 25, 150, 150);

  fill(93, 92, 92);
  strokeWeight(1);
  if (batmanon == true) {
    strokeWeight(20);
  } else {
    stroke(0);
  }
  
  tactile(750, 25, 900, 175);
  rect(750, 25, 150, 150);
  image(batman, 750, 25, 150, 150);

  strokeWeight(1);
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


  //clear save and load
  fill(0);

  stroke(0);
  strokeWeight(1);
  tactile(910, 25, 985, 53);
  rect(910, 25, 75, 28);

  stroke(0);
  strokeWeight(1);
  tactile(910, 60, 985, 88);
  rect(910, 60, 75, 28);

  stroke(0);
  strokeWeight(1);
  tactile(910, 95, 985, 126);
  rect(910, 95, 75, 28);

  textSize(25);
  textAlign(CENTER, CENTER);
  fill(255);
  text("Clear", 948, 40);
  text("Save", 948, 75);
  text("Load", 948, 110);
}


void saveImage(File f) {
  if (f != null) {
    PImage canvas = get(0, 200, width-0, height-200);
    canvas.save(f.getAbsolutePath());
  }
}
void checkcircle(int x, int y, int w, int z, color s) {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + z) {
    indicator = s;
    geralton = false;
    batmanon = false;
  }
}
void slider() {
  pushMatrix();
  if (mouseX > 350 && mouseX < 450 && mouseY > 115 && mouseY < 135) {
    sliderX = mouseX;
  }
  thickness = map(sliderX, 350, 450, 4, 20);
  sizeY = map(sliderX, 350, 450, 4, 100);
  sizeX = map(sliderX, 350, 450, 4, 100);
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
  geralt(500, 25, 150, 150);
  batman(750, 25, 150, 150);

  //save button
  if (mouseX > 910 && mouseX < 985 && mouseY > 60 && mouseY < 86 ) {
    selectOutput("Choose a name for your new image file", "saveImage");
  }

  //clear button
  if (mouseX > 910 && mouseY > 25 && mouseX < 985 && mouseY < 53) {
    background(255);
  }

  //load button
  if (mouseX > 910 && mouseY > 86 && mouseX < 985 && mouseY < 115) {
    selectInput("Pick an image to load", "openImage");
  }
}

void openImage(File f) {
  if (f != null) {
    int n = 0;
    while (n < 10) {
      PImage pic = loadImage(f.getPath());
      image(pic, 0, 0);
      n = n + 1;
    }
  }
}

void geralt(int x, int y, int w, int z) {
  if (mouseX > x && mouseY > y && mouseX < x+w && mouseY < y+z ) {
    geralton = !geralton;
    batmanon = false;
  }
}

void batman(int x, int y, int w, int z) {
  if (mouseX > x && mouseY > y && mouseX < x+w && mouseY < y+z ) {
    batmanon = !batmanon;
    geralton = false;
  }
}

void mouseDragged() {
  if (geralton == false && batmanon == false && mouseY > 200) {

    strokeWeight(thickness);
    stroke(indicator);
    line(pmouseX, pmouseY, mouseX, mouseY);
    slider();
  } else if (geralton == true && mouseY > 200) {
    image(geralt, mouseX, mouseY, sizeX, sizeY);
  } else if (batmanon == true && mouseY > 200) {
    image(batman, mouseX, mouseY, sizeX, sizeY);
  }
}




void tactile (int x, int y, int w, int h) {
  if (mouseX > x && mouseY > y && mouseX < w && mouseY < h ) {
    stroke(255);
  } else {
    stroke(0);
  }
}


int nDots = 100;
PVector[] dots;

void setup () {
  size(600, 600);

  dots = new PVector[nDots]; 
  for (int i = 0; i < nDots; i++) {
    dots[i] = new PVector(random(0, width), random(0, height));
  }
  noStroke();
}

void draw () {
  background(255);

  updateDots();
  renderDots();
}

void updateDots() {
  for (int i = 0; i < nDots; i++) {
    PVector offset = new PVector(random(-3, 3), random(-3, 3));
    dots[i].add(offset);
    
    if (dots[i].x < 0) { dots[i].x = width; }
    if (dots[i].x > width) { dots[i].x = 0; }
    if (dots[i].y < 0) { dots[i].y = height; }
    if (dots[i].y > height) { dots[i].y = 0; }
  }
}

void renderDots() {
  for (int i = 0; i < nDots; i++) {
    fill(255,0,0);
    
    ellipse(dots[i].x, dots[i].y, 30, 30);
    
    fill(0, 60);
    ellipse(dots[i].x, dots[i].y, 8, 8);
    
  }
}

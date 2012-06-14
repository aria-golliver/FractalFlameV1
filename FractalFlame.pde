HistogramCell[][] histogram;

Vec2 pos;

void setup() {
  size(wid, hei);
  background(0);
  frameRate(0xFFFFFFFF);
  stroke(0xFF);
  fill(0xFF);
  
  histogram = new HistogramCell[wid][hei];
  for(HistogramCell[] row : histogram){
    for(HistogramCell cell : row){
      cell = new HistogramCell();
    }
  }
  pos = new Vec2(random(-1,1), random(-1,1));  // generation starts by picking a point in the bi-unit square
}

void draw() {
  loadPixels();

  updatePixels();
}


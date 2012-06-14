HistogramCell[][] histogram;

Vec2 pos;

int iterations = 0;

void setup() {
  size(wid, hei);
  background(0);
  frameRate(0xFFFFFFFF);
  stroke(0xFFFFFFFF);
  fill(0xFFFFFFFF);
  
  histogram = new HistogramCell[wid][hei];
  for(HistogramCell[] row : histogram){
    for(HistogramCell cell : row){
      cell = new HistogramCell();
    }
  }
  
  pos = new Vec2(random(-1,1), random(-1,1));  // generation starts by picking a point in the bi-unit square
}

void draw() {
  //loadPixels();
  while(iterations++ < 20){
    pos = sierpinskie_triangle(pos);
  }
  for(int i = 0; i<1000; i++){
    pos = sierpinskie_triangle(pos);
    point(pos.x * wid, pos.y * hei);
  }

  //updatePixels();
}


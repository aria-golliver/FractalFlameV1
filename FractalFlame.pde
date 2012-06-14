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
  for (int x = 0; x<wid; x++) {
    for (int y = 0; y<hei; y++) {
      histogram[x][y] = new HistogramCell();
    }
  }

  pos = new Vec2(random(-1, 1), random(-1, 1));  // generation starts by picking a point in the bi-unit square
}

void draw() {
  loadPixels();
  pos = new Vec2(random(-1, 1), random(-1, 1));  // generation starts by picking a point in the bi-unit square
  while (iterations++ < 20) {
    //println(pos.x + " " + pos.y);
    pos = runVariations(pos);
    //println(pos.x + " " + pos.y);
  }
  
  for (int i = 0; i<400000; i++) {  pos = new Vec2(random(-1, 1), random(-1, 1));  // generation starts by picking a point in the bi-unit square
    pos = runVariations(pos);
    int x = (int)(pos.x * wid / 25 + wid/2);
    int y = (int)(pos.y * hei / 25 + hei/2);
    if(x >= 0 &&
       y >= 0 &&
       x < wid &&
       y < hei){
         histogram[x][y].hit(0,0,0);
       }
  }
  
  float maxA = 0;
  float avgA = 0;
  for (int x = 0; x<wid; x++) {
    for (int y = 0; y<hei; y++) {
      HistogramCell cell = histogram[x][y];
      maxA = maxA > cell.a ? maxA : cell.a;
      avgA += cell.a;
    }
  }
  avgA /= wid*hei;
  
  float logMaxA = log(maxA);
  
  for (int x = 0; x<wid; x++) {
    for (int y = 0; y<hei; y++) {
      HistogramCell cell = histogram[x][y];
      int c = (int) (log(cell.a)/logMaxA * 0xFF);
      c = c < 0xFF ? c : 0xFF;
      c = c << 8;
      //c = c << 16 | c << 8 | c;
      pixels[x + y * wid] = c | 0xFF << 24;
    }
  }
  //println(pos.x + " " + pos.y);

  updatePixels();
}


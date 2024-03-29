HistogramCell[][] histogram;

Vec2 pos;

int iterations = 0;

void setup() {
  size(swid, shei);
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
  //pos = new Vec2(random(-1, 1), random(-1, 1));  // generation starts by picking a point in the bi-unit square
  while (iterations++ < 20) {
    //println(pos.x + " " + pos.y);
    //pos = runVariations(pos);
    //println(pos.x + " " + pos.y);
  }

  for (int i = 0; i<1600000; i++) {  
    pos = new Vec2(random(-1, 1), random(-1, 1), 0, 0, 0);  // generation starts by picking a point in the bi-unit square
    pos = runVariations(pos);
    int x = (int)(pos.x * wid / 13 + wid/2);
    int y = (int)(pos.y * hei / 13 + hei/2);
    if (x >= 0 &&
      y >= 0 &&
      x < wid &&
      y < hei) {
      histogram[x][y].hit(pos.color_r, pos.color_g, pos.color_b);
    }
  }
  
  float maxA = 0;
  float logMaxA = 0;
  for (int x = 0; x < wid; x++) {
    for (int y = 0; y < hei; y++) {
      HistogramCell cell = histogram[x][y];
      maxA = maxA > cell.a ? maxA : cell.a;
    }
  }
  logMaxA = log(maxA);
  
  for (int x = 0; x<swid; x++) {
    for (int y = 0; y<shei; y++) {
      int a_avg = 0;
      float r_avg = 0;
      float g_avg = 0;
      float b_avg = 0;
      
      for (int xx = 0; xx<super_samples; xx++) {
        for (int yy = 0; yy<super_samples; yy++) {
          int current_x = x * super_samples + xx;
          int current_y = y * super_samples + yy;
          HistogramCell cell = histogram[current_x][current_y];

          a_avg += cell.a;
          r_avg += cell.r;
          g_avg += cell.g;
          b_avg += cell.b;
        }
      }
      a_avg /= (float)(super_samples * super_samples);
      r_avg /= (float)(super_samples * super_samples);
      g_avg /= (float)(super_samples * super_samples);
      b_avg /= (float)(super_samples * super_samples);
      
      if(a_avg > 0){
        float color_scale_factor = log(a_avg)/logMaxA;
  
        int a = 0xFF;
        int r = (int)((r_avg * color_scale_factor) * 0xFF);
        int g = (int)((g_avg * color_scale_factor) * 0xFF);
        int b = (int)((b_avg * color_scale_factor) * 0xFF);
        if(y == shei/2)println(color_scale_factor);
        
        
        pixels[x + y * swid] = a << 24 | r << 16 | g << 8 | b;
      } else {
        pixels[x + y * swid] = 0xFF << 24 ;
        
      }
    }
  }
  
  /*
  float maxA = 0;
  for (int x = 0; x < wid; x++) {
    for (int y = 0; y < hei; y++) {
      HistogramCell cell = histogram[x][y];
      maxA = maxA > cell.a ? maxA : cell.a;
    }
  }

  float logMaxA = log(maxA);

  for (int x = 0; x<swid; x++) {
    for (int y = 0; y<shei; y++) {
      int color_avg = 0;
      for (int xx = 0; xx<super_samples; xx++) {
        for (int yy = 0; yy<super_samples; yy++) {
          int current_x = x * super_samples + xx;
          int current_y = y * super_samples + yy;
          HistogramCell cell = histogram[current_x][current_y];

          color_avg += cell.a;
        }
      }
      color_avg /= (float)(super_samples * super_samples);

      int c = (int) (log(color_avg)/logMaxA * 0xFF);
      c = c < 0xFF ? c : 0xFF;
      c = c & 0x000000FF;
      c = (c/5) << 16 | c << 8 | (c/5);
      pixels[x + y * swid] = c | 0xFF << 24;
    }
  }
  */
  //println(pos.x + " " + pos.y);

  updatePixels();
  println(frameRate);
}


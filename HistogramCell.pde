// The cells that make up the histogram
// 

class HistogramCell {
  float r = 1;
  float g = 1;
  float b = 1;
  long  a = 0;

  void hit(float r, float g, float b) {
    this.r += r;
    this.r /= 2.0;

    this.g += g;
    this.g /= 2.0;

    this.b += b;
    this.b /= 2.0;

    this.a++;
  }
}


// The cells that make up the histogram
// 

class HistogramCell {
  float r = 0;
  float g = 0;
  float b = 0;
  long a = 0;

  void hit(float r, float g, float b) {
    this.r += r;
    this.r /= 2.0;

    this.g += r;
    this.g /= 2.0;

    this.b += r;
    this.b /= 2.0;

    this.a++;
  }
}


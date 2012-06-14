class HistogramCell {
  float r, g, b;
  long a;

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


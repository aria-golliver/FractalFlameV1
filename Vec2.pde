// A "functional" vector with only an x and y component
// (fractal flames live on a 2D grid, despite appearances.

class Vec2 {
  float x = 0, y = 0;
  float r = 0;
  float color_r = 0;
  float color_g = 0;
  float color_b = 0;
  float rsquared = 0;
  
  Vec2(float x, float y){
    this.x = x;
    this.y = y;
    this.r = sqrt(x*x + y*y);
    this.rsquared = x*x + y*y;
    this.color_r = 0;
    this.color_g = 0;
    this.color_b = 0;
    
  }
  
  
  Vec2(float x, float y, float c_r, float c_g, float c_b){
    this.x = x;
    this.y = y;
    this.r = sqrt(x*x + y*y);
    this.rsquared = x*x + y*y;
    this.color_r = c_r;
    this.color_g = c_g;
    this.color_b = c_b;
  }
  
  Vec2(float n){
    this.x = n;
    this.y = n;
  }

  Vec2 add( Vec2 b ) {
    return(
      new Vec2(
        this.x + b.x, 
        this.y + b.y,
        (this.color_r + b.color_r)/2,
        (this.color_g + b.color_g)/2,
        (this.color_b + b.color_b)/2));
  }

  Vec2 sub( Vec2 b ) {
    return(
      new Vec2(
        this.x - b.x, 
        this.y - b.y));
  } 

  Vec2 mul( Vec2 b ) {
    return(
      new Vec2(
        this.x * b.x, 
        this.y * b.y));
  }

  Vec2 div( Vec2 b ) {
    return(
      new Vec2(
        this.x / b.x, 
        this.y / b.y));
  }

  Vec2 add( float b ) {
    return(
      new Vec2(
        this.x + b, 
        this.y + b));
  }
  
  Vec2 sub( float b ) {
    return(
      new Vec2(
        this.x - b, 
        this.y - b));
  }
  
  Vec2 mul( float b ) {
    return(
      new Vec2(
        this.x * b, 
        this.y * b));
  }  
  
  Vec2 div( float b ) {
    return(
      new Vec2(
        this.x / b, 
        this.y / b));
  }
}


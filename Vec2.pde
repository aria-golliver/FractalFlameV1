// A "functional" vector with only an x and y component
// (fractal flames live on a 2D grid, despite appearances.

class Vec2 {
  float x = 0, y = 0;
  float r = 0;
  float rsquared = 0;
  
  Vec2(float x, float y){
    this.x = x;
    this.y = y;
    this.r = sqrt(x*x + y*y);
    this.rsquared = x*x + y*y;
  }
  
  Vec2(float n){
    this.x = n;
    this.y = n;
  }

  Vec2 add( Vec2 b ) {
    return(
      new Vec2(
        this.x + b.x, 
        this.y + b.y));
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


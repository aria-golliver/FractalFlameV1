// A "functional" vector with only an x and y component
// (fractal flames live on a 2D grid, despite appearances.

class Vec2 {
  final float x, y;
  
  Vec2(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  Vec2(float n){
    this.x = n;
    this.y = n;
  }

  Vec2 add(Vec2 a, Vec2 b) {
    return(
      new Vec2(
        a.x + b.x, 
        a.y + b.y));
  }

  Vec2 sub(Vec2 a, Vec2 b) {
    return(
      new Vec2(
        a.x - b.x, 
        a.y - b.y));
  } 

  Vec2 mul(Vec2 a, Vec2 b) {
    return(
      new Vec2(
        a.x * b.x, 
        a.y * b.y));
  }

  Vec2 div(Vec2 a, Vec2 b) {
    return(
      new Vec2(
        a.x / b.x, 
        a.y / b.y));
  }

  Vec2 add(Vec2 a, float b) {
    return(
      new Vec2(
        a.x + b, 
        a.y + b));
  }
  
  Vec2 sub(Vec2 a, float b) {
    return(
      new Vec2(
        a.x - b, 
        a.y - b));
  }
  
  Vec2 mul(Vec2 a, float b) {
    return(
      new Vec2(
        a.x * b, 
        a.y * b));
  }  
  
  Vec2 div(Vec2 a, float b) {
    return(
      new Vec2(
        a.x / b, 
        a.y / b));
  }
}


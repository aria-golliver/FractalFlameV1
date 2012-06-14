// A "functional" vector with only an x and y component
// (fractal flames live on a 2D grid, despite appearances.

class Vec2 {
  float x, y;

  static Vec2 add(Vec2 a, Vec2 b) {
    return(
      new Vec2(
        a.x + b.x, 
        a.y + b.y));
  }

  static Vec2 sub(Vec2 a, Vec2 b) {
    return(
      new Vec2(
        a.x - b.x, 
        a.y - b.y));
  } 

  static Vec2 mul(Vec2 a, Vec2 b) {
    return(
      new Vec2(
        a.x * b.x, 
        a.y * b.y));
  }

  static Vec2 div(Vec2 a, Vec2 b) {
    return(
      new Vec2(
        a.x / b.x, 
        a.y / b.y));
  }


  static Vec2 add(Vec2 a, float b) {
    return(
      new Vec2(
        a.x + b, 
        a.y + b));
  }
  static Vec2 sub(Vec2 a, float b) {
    return(
      new Vec2(
        a.x - b, 
        a.y - b));
  }
  static Vec2 mul(Vec2 a, float b) {
    return(
      new Vec2(
        a.x * b, 
        a.y * b));
  }  
  static Vec2 div(Vec2 a, float b) {
    return(
      new Vec2(
        a.x / b, 
        a.y / b));
  }
}


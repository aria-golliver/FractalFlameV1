Vec2 runVariations(Vec2 pos){
  Vec2 finalPos = new Vec2(pos.x, pos.y);
  
  int iterations = 0;
  //if(random(0,100) <= 1) iterations = 5
  
  int seed = (int) random(0,100);
  /*if(seed <= 100) iterations = 2;
  if(seed <= 40) iterations = 3;
  if(seed <= 10) iterations = 4;
  if(seed <= 1) iterations = 12;*/
  iterations = 4;
  
  
  for(int i = 0; i<iterations; i++){
    switch((int) random(1,9)){
      case 0:
        finalPos = finalPos.add(v0(pos));
        break;
      case 1:
        finalPos = finalPos.add(v1(pos));
        break;
      case 2:
        finalPos = finalPos.add(v2(pos));
        break;
      case 3:
        finalPos = finalPos.add(v3(pos));
        break;
      case 4:
        finalPos = finalPos.add(v4(pos));
        break;
      case 5:
        finalPos = finalPos.add(v5(pos));
        break;
      case 6:
        finalPos = finalPos.add(v1f(pos));
        break;
      case 7:
        finalPos = finalPos.add(v2f(pos));
        break;
      case 8:
        finalPos = finalPos.add(v3f(pos));
        break;
    }
  }
  return finalPos;
}

Vec2 v0(Vec2 pos){
  float r = 0;
  float g = 1;
  float b = 0;
  return(
    new Vec2(
      -1 * pos.x,
      -1 * pos.y,
      r,
      g,
      b));
}

Vec2 v1(Vec2 pos){
  float r = 1;
  float g = 0;
  float b = 1;
  return(
    new Vec2(
      sin(pos.x),
      cos(pos.y),
      r,
      g,
      b));
}

Vec2 v1f(Vec2 pos){
  float r = 1;
  float g = 0;
  float b = 1;
  return(
    new Vec2(
      cos(pos.y),
      sin(pos.x),
      r,
      g,
      b));
}

Vec2 v2(Vec2 pos){
  float r = 0;
  float g = 0;
  float b = 1;
  return(
    new Vec2(
      1/pos.rsquared * pos.x,
      1/pos.rsquared * pos.y,
      r,
      g,
      b));
}

Vec2 v2f(Vec2 pos){
  float r = 0;
  float g = 1;
  float b = 0;
  return(
    new Vec2(
      1/pos.rsquared * pos.y,
      1/pos.rsquared * pos.x,
      r,
      g,
      b));
}

Vec2 v3(Vec2 pos){
  float r = 1;
  float g = 1;
  float b = 0;
  return(
    new Vec2(
      pos.x * sin(pos.rsquared) - pos.y * cos(pos.rsquared),
      pos.x * sin(pos.rsquared) + pos.y * cos(pos.rsquared),
      r,
      g,
      b));
}

Vec2 v3f(Vec2 pos){
  float r = 1;
  float g = 0;
  float b = 0;
  return(
    new Vec2(
      pos.x * cos(pos.rsquared) + pos.y * sin(pos.rsquared),
      pos.x * cos(pos.rsquared) - pos.y * sin(pos.rsquared),
      r,
      g,
      b));
}

Vec2 v4(Vec2 pos){
  float r = 1;
  float g = 0;
  float b = 0;
  return(
    new Vec2(
      1.0/pos.r * ((pos.x - pos.y) * (pos.x + pos.y)),
      2 * pos.x * pos.y,
      r,
      g,
      b));
}

Vec2 v5(Vec2 pos){
  float r = 0;
  float g = 1;
  float b = 0;
  return(
    new Vec2(
      2.0 / (pos.r + 1) * pos.y,
      2.0 / (pos.r + 1) * pos.x,
      r,
      g,
      b));
}

Vec2 v6(Vec2 pos){
  float r = 0;
  float g = 0;
  float b = 1;
  return(
    new Vec2(
      pos.x + 1 * sin(tan(3 * pos.y)),
      pos.y + 1 * sin(tan(3 * pos.y)),
      r,
      g,
      b));
}

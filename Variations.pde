Vec2 runVariations(Vec2 pos){
  Vec2 finalPos = new Vec2(pos.x, pos.y);
  
  int iterations = 12;
  for(int i = 0; i<iterations; i++){
    switch((int) random(0,6)){
      case 0:
        finalPos = finalPos.add(v0(finalPos));
        break;
      case 1:
        finalPos = finalPos.add(v1(finalPos));
        break;
      case 2:
        finalPos = finalPos.add(v2(finalPos));
        break;
      case 3:
        finalPos = finalPos.add(v3(finalPos));
        break;
      case 4:
        finalPos = finalPos.add(v4(finalPos));
        break;
      case 5:
        finalPos = finalPos.add(v5(finalPos));
        break;
    }
  }
  return finalPos;
}

Vec2 v0(Vec2 pos){
  return(
    new Vec2(
      pos.x,
      pos.y));
}

Vec2 v1(Vec2 pos){
  return(
    new Vec2(
      sin(pos.x),
      cos(pos.y)));
}

Vec2 v2(Vec2 pos){
  return(
    new Vec2(
      1/pos.rsquared * pos.x,
      1/pos.rsquared * pos.y));
}

Vec2 v3(Vec2 pos){
  return(
    new Vec2(
      pos.x * sin(pos.rsquared) - pos.y * cos(pos.rsquared),
      pos.x * sin(pos.rsquared) + pos.y * cos(pos.rsquared)));
}

Vec2 v4(Vec2 pos){
  return(
    new Vec2(
      1.0/pos.r * ((pos.x - pos.y) * (pos.x + pos.y)),
      2 * pos.x * pos.y));
}

Vec2 v5(Vec2 pos){
  return(
    new Vec2(
      2.0 / (pos.r + 1) * pos.y,
      2.0 / (pos.r + 1) * pos.x));
}

Vec2 v6(Vec2 pos){
  return(
    new Vec2(
      pos.x + 1 * sin(tan(3 * pos.y)),
      pos.y + 1 * sin(tan(3 * pos.y))));
}

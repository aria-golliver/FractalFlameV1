Vec2 sierp0(Vec2 pos){
  return(
    new Vec2(
      pos.x/2.0,
      pos.y/2.0));
}

Vec2 sierp1(Vec2 pos){
  return(
    new Vec2(
      (pos.x + 1)/2.0,
      pos.y/2.0));
}

Vec2 sierp2(Vec2 pos){
  return(
    new Vec2(
      pos.x/2.0,
      (pos.y + 1)/2.0));
}

Vec2 sierpinskie_triangle(Vec2 pos){
  int i = (int) random(0,3);
  switch(i){
    case 0:
      pos = sierp0(pos);
      break;
    case 1:
      pos = sierp1(pos);
      break;
    case 2:
      pos = sierp2(pos);
      break;
  }
  return(pos);
}

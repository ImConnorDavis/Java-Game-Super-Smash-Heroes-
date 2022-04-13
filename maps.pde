void mapSelect()
{
  background(0);
  text("flat",200,200);
  if (mouseX >= 0 & mouseX <= 200)
  {
    if (mousePressed) startCheck = 5;
  }
}
void towerMap()
{
  background(155);
  noStroke();
  fill(110);
  //ground
  rect(0,height-30,width,30);
  rect(0,height/2,width,30);
  if (playerY >= height-70) playerY = height-70;
  imageMode(CENTER);
  image(boulder,boulderX,boulderY);
  //if (aiPlayerY >= height-70) aiPlayerY = height-70;
  if (playerX <= 0) playerX = 0 + 10;
  if (dropCheck == 0) 
  {
    //if (playerY+50 >= height/2 & playerY+50 <= height/2+50) playerY = height/2-50;
  }
  //if (key == 's') dropCheck = 1;
  //else dropCheck = 0;
}

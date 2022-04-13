void mainScreen()
{
  if (startCheck == 0)
  {
    image(titleScreen,0,0,width,height);
    fill(255);
    textSize(player1Text);
    textAlign(CENTER);
    text("Play", width/2, height/2);
    if (mouseX >= width/2-60 && mouseX <= width/2+60 && mouseY >= height/2-30 && mouseY <= height/2+30)
    {
      player1Text = 60;
      if (mousePressed)
      {
        startCheck = 1;
        image(titleScreen,0,0,width,height);
      }
    }
    else
    {
      player1Text = 40;
    }
  }
  if (startCheck == 1)
  {
    loadScreenSetup();
    playerSelection();
    //themeSong.stop();
  }
}


void loadScreenSetup()
{
  stroke(255);
  strokeWeight(10);
  pushMatrix();
  translate(width/2,height/2);
  point(a(t),b(t));
  point(c(t),d(t));
  point(e(t),f(t));
  t++;
  popMatrix();
}

float a(float t)
{
  return sin(t/20) * 173;
}
float b(float t)
{
  return sin(t/20) * -173;
}
float c(float t)
{
  return -sin(t/20) * 173;
}
float d(float t)
{
  return -sin(t/20) * -173;
}
float e(float t)
{
  return sin(t/10) *250;
}
float f(float t)
{
  return cos(t/10) *250;
}

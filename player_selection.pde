void playerSelection()
{
  imageMode(CENTER);
  text("Heroes", width/2-width/14, height/2-height/12);
  text("Villains", width/2+width/12, height/2+height/9);
  if (mouseX >= width/2-200 & mouseX <= width/2-25 & mouseY >= height/2-125 & mouseY <= height/2-75)
  {
    fill(0,255,0);
    text("Heroes", width/2-width/14, height/2-height/12);
    fill(255);
    text("Villains", width/2+width/12, height/2+height/9);
    if (mousePressed)
    {
      clear();
      startCheck = 2;
    }
  }
  else fill(255);
  
  if (mouseX >= width/2+25 & mouseX <= width/2+200 & mouseY >= height/2+50 & mouseY <= height/2+125)
  {
    fill(255,0,0);
    text("Villains", width/2+width/12, height/2+height/9);
    fill(255);
    text("Heroes", width/2-width/14, height/2-height/12);
    if (mousePressed)
    {
      clear();
      startCheck = 3;
    }
  }
  else fill(255);
  
  //HEROES
  if (startCheck == 2)
  {
    background(0);
    textSize(20);
    if (mouseX >= 10 && mouseX <= 50 && mouseY >= 10 && mouseX <= 50)
    {
      if (mousePressed)
      {
        startCheck = 1;
      }
    }
    text("BACK",50,50);
    //ObiWan
    image(obiSelect,width/6,height/5);
    if (mouseX >= width/6-40 & mouseX <= width/6+40 & mouseY >= height/5-40 & mouseY <= height/5+40)
    {
      image(obiSelect,width/6,height/5,100,100);
      if (mousePressed)
      {
        //player();
        startCheck = 4;
        playerCheck = 1;
        //themeSong.stop();
      }
    }
    //Batman
    image(batmanSelect,width/4,height/5);
    if (mouseX >= width/4-40 & mouseX <= width/4+40 & mouseY >= height/5-40 & mouseY <= height/5+40)
    {
      image(batmanSelect,width/4,height/5,100,100);
      if (mousePressed)
      {
        //themeSong.stop();
        //imBatman.play();
        delay(1000);
        startCheck = 4;
        playerCheck = 3;
      }
    }
    image(drStrangeSelect,width/3,height/5);
    if (mouseX >= width/3-40 & mouseX <= width/3+40 & mouseY >= height/5-40 & mouseY <= height/5+40)
    {
      image(drStrangeSelect,width/3,height/5,100,100);
      if (mousePressed)
      {
        startCheck = 4;
        playerCheck = 5;
        //themeSong.stop();
      }
    }
    image(flashSelect,width/2.4,height/5);
    if (mouseX >= width/2.4-40 & mouseX <= width/2.4+40 & mouseY >= height/5-40 & mouseY <= height/5+40)
    {
      image(flashSelect,width/2.4,height/5,100,100);
      if (mousePressed)
      {
        startCheck = 4;
        playerCheck = 7;
        //themeSong.stop();
      }
    }
    image(wolverineSelect,width/2,height/5);
    if (mouseX >= width/2-40 & mouseX <= width/2+40 & mouseY >= height/5-40 & mouseY <= height/5+40)
    {
      image(wolverineSelect,width/2,height/5,100,100);
      if (mousePressed)
      {
        startCheck = 4;
        playerCheck = 9;
        //themeSong.stop();
      }
    }
    image(supermanSelect,width/2+width/12,height/5);
    if (mouseX >= width/2+width/12-40 & mouseX <= width/2+width/12+40 & mouseY >= height/5-40 & mouseY <= height/5+40)
    {
      image(supermanSelect,width/2+width/12,height/5,100,100);
      if (mousePressed)
      {
        startCheck = 4;
        playerCheck = 11;
        //themeSong.stop();
      }
    }
  }
  
  //VILLAINS
  if (startCheck == 3)
  {
    background(0);
    image(thanosSelect,width/6,height/5);
    if (mouseY >= 0 & mouseY <= 200)
    {
      image(thanosSelect,width/6,height/5,100,100);
      if (mousePressed)
      {
        startCheck = 4;
        playerCheck = 2;
        //themeSong.stop();
      }
    }
  }
  
}

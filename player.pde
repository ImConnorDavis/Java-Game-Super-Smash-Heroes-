void player()
{
  //player parts
  //image(player,playerX,playerY);
  
  if (playerY >= height-50)
  {
    playerY = height-50;
  }
  
  //gravity
  if (gravityCheck == 1)
  {
    playerY += gravity;
    gravity++;
  }
  
  //map goes here
  towerMap();
  if (health > 0)
  {
    stroke(255);
    strokeWeight(1);
    noFill();
    rect(100,100,200,25);
    fill(255);
    rect(100,100,health,25);
  }
  
  //if (playerY > playerY2)
  //KEY FOR GOING UP 'W'
  if (keys[0])
  {
    if (playerCheck == 5)
    {
      gravityCheck = 0;
      playerY -= 5;
    }
  }
  //KEY FOR GOING DOWN 'S'
  if (keys[1])
  {
    if (playerCheck == 5)
    {
      playerY += 5;
    }
  }
  //KEY FOR GOING LEFT 'A'
  if (keys[2])
  {
    flipCheck = 1;
    playerX -= runSpeed;
  }
  //KEY FOR GOING RIGHT 'D'
  if (keys[3])
  {
    flipCheck = 0;
    playerX += runSpeed;
  }
  //KEY FOR WHATEVER ' '
  if (keys[4])
  {
    //if (playerCheck == 5) image(strangeFireR,playerX,playerY);
  }
  
  //Players
  if (playerCheck == 1)
  {
    image(obiWan,playerX,playerY);
  }
  if (playerCheck == 2)
  {
    image(thanos,playerX,playerY);
  }
  if (playerCheck == 3)
  {
    if (flipCheck == 0) image(batman,playerX,playerY);
    if (flipCheck == 1) image(batmanSL,playerX,playerY);
    if (mousePressed)
    {
      playerX = mouseX;
      playerY = mouseY;
      gravity = 0;
    }
  }
  if (playerCheck == 4)
  {
  }
  if (playerCheck == 5)
  {
    if (flipCheck == 0)
    {
      if (strangeFireCheck == 1)
      {
        image(strangeFireR,playerX,playerY);
        image(fireRight,playerX+95,playerY);
        if (aiPlayerX <= playerX+195) aiHealth -=1;
      }
      else image(drStrange,playerX,playerY);
    }
    if (flipCheck == 1)
    {
      if (strangeFireCheck == 1)
      {
        image(strangeFireL,playerX,playerY);
        image(fireLeft,playerX-95,playerY);
        if (aiPlayerX <= playerX-95) aiHealth -=1;
      }
      else image(drStrangeSL,playerX,playerY);
    }
    if (key == 'e')
    {
      if (strangeAstralCheck == 0)
      {
        strangeAstralX = playerX;
        strangeAstralY = playerY;
      }
      strangeAstralCheck = 1;
      tint(255,100);
      image(drStrange, playerX,playerY);
    }
    if (strangeAstralCheck == 1)
    {
      image(drStrange,strangeAstralX,strangeAstralY);
    }
  }
  if (playerCheck == 6)
  {
  }
  if (playerCheck == 7)
  {
    image(flash,playerX,playerY);
  }
  if (playerCheck == 8)
  {
  }
  if (playerCheck == 9)
  {
    image(wolverine,playerX,playerY);
  }
  if (playerCheck == 10)
  {
  }
  if (playerCheck == 11)
  {
    image(superman,playerX,playerY);
  }
}


void keyPressed()
{
  if (key == 'w')
  {
    keys[0] = true;
    if (playerCheck != 5)
    {
      if (playerY2 <= playerY){
        playerY2 = playerY - 20;
        gravity = -20;
    }}
  }
  if (key == 's') keys[1] = true;
  if (key == 'a') keys[2] = true;
  if (key == 'd') keys[3] = true;
  if (key == ' ')
  {
    keys[4] = true;
    strangeFireCheck = 1;
    if (playerCheck == 7) runSpeed = 40;
  }
  //PLAYER ATTACK
  if (keyCode == RIGHT)
  {
    keys[5] = true;
    if (dist(playerX,playerX,aiPlayerX,aiPlayerX) <= 100)
    {
      if (playerX < aiPlayerX)
      {
        aiPlayerX += 15;
        aiHealth -= 5;
      }
    }
  }
  
  if (keyCode == LEFT)
  {
    keys[6] = true;
    if (dist(playerX,playerX,aiPlayerX,aiPlayerX) <= 100)
    {
      if (playerX > aiPlayerX)
      {
        aiPlayerX -= 15;
        aiHealth -= 5;
      }
    }
  }
}

void keyReleased()
{
  if (key == 'w') keys[0] = false;
  if (key == 's') keys[1] = false;
  if (key == 'a') keys[2] = false;
  if (key == 'd') keys[3] = false;
  if (key == ' ')
  {
    keys[4] = false;
    strangeFireCheck = 0;
    if (playerCheck == 7) runSpeed = 5;
  }
  if (keyCode == RIGHT) keys[5] = false;
  if (keyCode == LEFT) keys[6] = false;
}

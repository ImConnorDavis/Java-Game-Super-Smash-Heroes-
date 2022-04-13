class ai
{
  // Attributes (varibles)
  //float aiPlayer,aiPlayerX,aiPlayerY,aiGravity;
  float mood,safeZone,walkSpeed;
  float thanosTeleport,thanosAttack;
  float aiFlipCheck,attackCheck;
  // Constructor
  ai(){
    aiPlayerX = 600;
    aiPlayerY = 200;
    aiFlipCheck = 1;
    //aiPlayer = int(random(1,4));
    mood = int(random(1,4));
    //mood = 3;
    safeZone = int(random(100,200));
    walkSpeed = int(random(2,5));
    mood = 3;
    aiPlayer = 2;
    attackCheck = 0;
  }
  
  
  // Methods (functions)
  void display()
  {
    if(aiPlayer == 1) image(obiWan,aiPlayerX,aiPlayerY);
    if(aiPlayer == 2)
    {
      if (attackCheck == 0){
      if (aiFlipCheck == 0) image(thanos,aiPlayerX,aiPlayerY,125,125);
      if (aiFlipCheck == 1) image(thanosSL,aiPlayerX,aiPlayerY,125,125);
      }
      if (attackCheck == 1) image(thanosPL,aiPlayerX,aiPlayerY,125,125);
    }
    if(aiPlayer == 3) image(batman,aiPlayerX,aiPlayerY);
    
  }
  void fight()
  {
    aiPlayerY += aiGravity;
    aiGravity++;
    if (aiPlayerY >= height-80) aiPlayerY = height-80;
    
    //AGGRESSIVE MOOD
    if (mood == 1)
    {
      if (aiPlayerX <= width)
      {
        if (playerX < aiPlayerX)
        {
          aiFlipCheck = 1;
          if (aiHealth >= 180) aiPlayerX -= walkSpeed;
          if (dist(playerX,playerX,aiPlayerX,aiPlayerX) <= 100)
          {
            attackCheck = 1;
            playerX -= 50;
            health -= 5;
          }
          if (aiHealth <= 150)
          {
          }
        }
        else attackCheck = 0;
        if (playerX > aiPlayerX)
        {
          aiFlipCheck = 0;
          if (aiHealth >= 90) aiPlayerX += walkSpeed;
        }
        if (aiHealth >= 160 & aiHealth <= 179)
        {
          thanosAttack = random(1,2);
          if (dist(playerX,playerX,aiPlayerX,aiPlayerX) <= safeZone)
          {
            
            //THANOS ABILITY
            if (aiPlayer == 2)
            {
              thanosTeleport = random(0,width);
              aiPlayerX = thanosTeleport;
            }
          }
          if (dist(playerX,playerX,aiPlayerX,aiPlayerX) >= 300)
          {
            if (thanosAttack == 1)
            {
              if (playerX < boulderX) boulderX -= 20;
              if (playerY > boulderY) boulderY += 20;
              if (playerX > boulderX) boulderX -= 20;
              if (playerX == boulderX && playerY == boulderY) 
              {
                health -= 10;
                boulderX = 2000;
                boulderY = -1000;
              }
              if (boulderX < 0)
              {
                boulderX = random(width,width+width);
                thanosAttack = random(1,3);
              }
            }
            if (thanosAttack == 2)
            {
              aiPlayerX = playerX + 50;
            }
          }
        }
      }
    }
    
    //PASSIVE MOOD
    if (mood == 2)
    {
      if (aiPlayerX <= width)
      {
        if (dist(playerX,playerY,aiPlayerX,aiPlayerY) <= safeZone)
        {
          if (playerX < aiPlayerX) aiPlayerX += walkSpeed;
          if (playerX > aiPlayerX) aiPlayerX -= walkSpeed;
          if (safeZone-50 <= 100)
          {
            if (runSpeed != 40) attackCheck = 1;
            if (attackCheck == 1)
            {
              health -= 10;
              playerX -= 25;
            }
          }
        }
      }
      if (aiPlayerX >= width)
      {
        aiGravity = -15;
        aiPlayerX -= 50;
      }
    }
    
    //DEFENSIVE MOOD
    if (mood == 3)
    {
      if (dist(playerX,playerX,aiPlayerX,aiPlayerX) <= safeZone)
      {
        //thanosAttack = random(1,3);
        thanosAttack = 1;
        if (thanosAttack == 1)
        {
          image(thanosTeleporting, aiPlayerX, aiPlayerY);
          aiPlayerX = random(0,width);
        }
        if (thanosAttack == 2)
        {
          if (playerX < boulderX) boulderX -= 20;
          if (playerY > boulderY) boulderY += 20;
          if (playerX >= boulderX) boulderX -= 20;
          if (boulderX < 0)
          {
            boulderX = random(width,width+width);
            thanosAttack = random(1,3);
          }
        }
      }
    }
  }
  void health()
  {
    if (aiHealth > 0)
    {
      stroke(255);
      strokeWeight(1);
      noFill();
      rect(width/2+width/4,100,200,25);
      fill(255);
      rect(width/2+width/4,100,aiHealth,25);
    }
  }
}

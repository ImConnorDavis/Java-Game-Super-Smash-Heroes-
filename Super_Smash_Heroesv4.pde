import gifAnimation.*;
import processing.sound.*;
SoundFile themeSong,imBatman;
Gif myAnimation, player;
Gif batman,batmanSL;
Gif superman;
Gif obiWan,obiForce,flash,wolverine;
Gif drStrange,drStrangeSL;
Gif thanos,thanosSL;
Gif thanosTeleporting;
Gif fireRight,fireLeft;
Delay delay;
PImage titleScreen;
PImage obiSelect,batmanSelect,drStrangeSelect,flashSelect,wolverineSelect,supermanSelect;
PImage thanosSelect;
PImage strangeFireR,strangeFireL;
PImage thanosPL;
PImage boulder;
float boulderX,boulderY;
float strangeAstralCheck,strangeAstralX,strangeAstralY,strangeFireCheck;
float startCheck, playerCheck, dropCheck, gravityCheck,flipCheck;
float player1Text, t;
float playerX, playerY, playerY2, gravity,health,runSpeed;
float aiPlayer,aiPlayerX,aiPlayerY,aiGravity,aiHealth;
//float aiPlayer,aiPlayerX,aiPlayerY,aiGravity;
boolean keys[] = new boolean[7];
String character;

ai player2 = new ai();

void setup()
{
    //size(400,400);
    //myAnimation = new Gif(this, ".gif");
    fullScreen();
    titleScreen = loadImage("title.jpg");
    obiSelect = loadImage("obi select.png");
    thanosSelect = loadImage("thanos select.png");
    batmanSelect = loadImage("batman select.png");
    drStrangeSelect = loadImage("strange select.png");
    flashSelect = loadImage("flash select.png");
    wolverineSelect = loadImage("wolverine select.png");
    supermanSelect = loadImage("superman select.png");
    boulder = loadImage("boulder.png");
    strangeFireR = loadImage("strange fire right.png");
    strangeFireL = loadImage("strange fire left.png");
    thanosPL = loadImage("thanos punch left.png");
    themeSong = new SoundFile(this, "themeSong.mp3");
    //imBatman = new SoundFile(this, "im batman.mp3");
    
    //Players
    player = new Gif(this, "obi stand right.gif");
    obiWan = new Gif(this, "obi stand right.gif");
    obiForce = new Gif(this, "obi force.gif");
    //Thanos
    thanos = new Gif(this, "thanos stand.gif");
    thanosSL = new Gif(this, "thanos stand left.gif");
    thanosTeleporting = new Gif(this, "thanos teleporting.gif");
    thanos.play();
    thanosSL.play();
    thanosTeleporting.play();
    //Batman
    batman = new Gif(this, "batman stand.gif");
    batmanSL = new Gif(this, "batman stand left.gif");
    batman.play();
    batmanSL.play();
    //Superman
    superman = new Gif(this, "superman stand right.gif");
    superman.play();
    //Dr Strange
    drStrange = new Gif(this, "strange stand.gif");
    drStrangeSL = new Gif(this, "strange stand left.gif");
    drStrange.play();
    drStrangeSL.play();
    
    flash = new Gif(this, "flash stand.gif");
    wolverine = new Gif(this, "wolverine stand.gif");
    fireRight = new Gif(this, "fire right.gif");
    fireLeft = new Gif(this, "fire left.gif");
    obiForce.play();
    player.play();
    obiWan.play();
    flash.play();
    wolverine.play();
    fireRight.play();
    fireLeft.play();
    
    delay = new Delay(this);
    
    playerX = 200;
    playerY = 200;
    playerY2 = playerY;
    health = 200;
    aiHealth = 200;
    boulderX = random(width,width+width);
    boulderY = random(-height,-height+-height);

    startCheck = 0;
    playerCheck = 0;
    dropCheck = 0;
    gravityCheck = 1;
    strangeAstralCheck = 0;
    flipCheck = 0;
    strangeFireCheck = 0;
    runSpeed = 5;
    if (startCheck == 0)
    {
      image(titleScreen,0,0,width,height);
      themeSong.play();
    }
}

void draw()
{
  mainScreen();
  //player();
  //if (startCheck == 2)
  //{
  //  background(255);
  //  //scale(-1,1);
  //  player();
  //}
  //playerSelection();
  if (startCheck == 2)
  {
    playerSelection();
  }
  if (startCheck == 4)
  {
    mapSelect();
  }
  if (startCheck == 5)
  {
    player();
    player2.display();
    player2.fight();
    player2.health();
  }
}

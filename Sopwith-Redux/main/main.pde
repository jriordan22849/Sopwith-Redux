MainMenu main = new MainMenu();
Option option = new Option();
Single single = new Single();
Multi multi = new Multi();
Controls controls = new Controls();
Instructions instructions = new Instructions();
PlayingScreen playing = new PlayingScreen();
Player player  =new Player();

PImage bg, bg2, bg3, oldPlane, oldPlaneSmall, modernPlane, modernPlaneSmall, spaceShip, spaceShipSmall, playGameButton, playGameButton2, singlePlayerButton, singlePlayerButton2,
multiplayerButton, multiplayerButton2, exitGameButton, exitGameButton2, howToPlayButton, howToPlayButton2,
backButton, backButton2, tfighter, mPlane, oPlane, instructions4, life, walker, bombSymbol, SpaceShipSmallBlue, SpaceShipBlue, instructions5, oldplaneBlue, oldplanebluesmall, 
modernplanesmallblue, modernplaneblue, modernplane2;

// screen booleans
boolean singlplayer = false;
boolean multiplayer = false;
boolean howToPlay = false;
boolean mainMenu = true;
boolean optionMenu = false;
boolean playScreen = false;
boolean exit = false;

boolean screenShift = false;
boolean fuelTank = true;
boolean bool = false;
boolean bombFire = true;


// plane options for players.
boolean oldPlaneBoolean = false;
boolean modernPlaneBoolean = false;
boolean tFighterBoolean = false;

//themes

boolean ww2 = false;
boolean sw = false;
boolean mw = false;

int start;
int x, y;
int baseX,baseY;
int lifes = 3;
int score = 0;
int numOfBases = 5;
int numOfBombs = 3;

float fuel = 100;

 ArrayList<GameObjects> objects = new ArrayList<GameObjects>();
 ArrayList<Bullet> bullets = new ArrayList<Bullet>();
 ArrayList<Bomb> bombs = new ArrayList<Bomb>();
 ArrayList<Player> players = new ArrayList<Player>();
 ArrayList<Background> back = new ArrayList<Background>();
 ArrayList<EnemyPlane> planes = new ArrayList<EnemyPlane>();
 ArrayList<EnemyBases> bases = new ArrayList<EnemyBases>();
 

void setup() {
  size(800, 600); 
  start = millis();
  
  // set image variables
  bg = loadImage("images/Background11.png");
  bg2 = loadImage("images/Background2.png");
  bg3 = loadImage("images/Background3.png");
  oldPlane = loadImage("images/oldplane.png");
  oldPlaneSmall = loadImage("images/oldplaneSmall.png");
  modernPlane = loadImage("images/modernplane.png");
  modernPlaneSmall = loadImage("images/modernplaneSmall.png");
  spaceShip = loadImage("images/SpaceShip.png");
  spaceShipSmall = loadImage("images/SpaceShipSmall.png");
  playGameButton = loadImage("images/PlayGameButton.png");
  playGameButton2 = loadImage("images/PlayGameButton2.png");
  singlePlayerButton = loadImage("images/SinglePlayerButton.png");
  singlePlayerButton2 = loadImage("images/SinglePlayerButton2.png");
  multiplayerButton = loadImage("images/MultiplayerButton.png");
  multiplayerButton2 = loadImage("images/MultiplayerButton2.png");
  exitGameButton = loadImage("images/ExitGameButton.png");
  exitGameButton2 = loadImage("images/ExitGameButton2.png");
  howToPlayButton = loadImage("images/HowToPlayButton.png");
  howToPlayButton2 = loadImage("images/HowToPlayButton2.png");
  backButton = loadImage("images/BackButton.png");
  backButton2 = loadImage("images/BackButton2.png");
  tfighter = loadImage("images/tFighter.png");
  mPlane = loadImage("images/modernplane1.png");
  oPlane = loadImage("images/oldplane1.png");
  instructions4 = loadImage("images/instructions4.png");
  life = loadImage("images/life.PNG");
  walker = loadImage("images/walker.png");
  bombSymbol = loadImage("images/bomb.png");
  SpaceShipSmallBlue = loadImage("images/SpaceShipSmallBlue.png");
  SpaceShipBlue = loadImage("images/SpaceShipBlue.png");
  instructions5 = loadImage("images/instructions5.png");
  oldplaneBlue = loadImage("images/oldplaneBlue.png");
  oldplanebluesmall = loadImage("images/oldplanebluesmall.png");
  modernplanesmallblue = loadImage("images/modernplanesmallblue.png");
  modernplaneblue = loadImage("images/modernplaneblue.png");
  modernplane2 = loadImage("images/modernplane2.png");
  
   
   for( int i = 0 ; i<1; i++)
   {
     Background player = new Background(0,0);
     objects.add(player);
     back.add(player); 
   }
   for( int i = 0 ; i<1; i++)
   {
     Background player = new Background(800,0);
     objects.add(player);
     back.add(player); 
   }

  
  for( int i = 0 ; i<1; i++)
  {
     Player player = new Player(400,300);
     objects.add(player);
     players.add(player);
  }
  
  for(int i = 0; i < 4; i ++) {
    //float x  = random(width, width + 300);
    //float y = random(50, height - 50);
    
    x = (int)random(width, width + 1000);
    y = (int)random(200,height - 250);
    EnemyPlane enemy = new EnemyPlane(x,y);
    planes.add(enemy);
  }
  
  for(int i = 0; i < numOfBases; i ++) {
    baseX = (int)random(width, width + 500);
    baseY = 480;
    EnemyBases base = new EnemyBases(baseX,baseY);
    bases.add(base);
  }
 
}

void draw() {
  
  background(0);

  // Main menu screen
  if( mainMenu== true) {
    main.display();  
    screenShift = false;
  }
  
  if(optionMenu == true) {
    option.display();
  }
  
  if(singlplayer == true) {
    single.display();
    controls.control();
  }
  
  if(multiplayer == true) {
    multi.display();
  }
  
  if(howToPlay == true) {
    instructions.display();
  }
    
  if(exit == true) {
   exit(); 
  }
  
  if(playScreen == true) {
    
   
    
    //player.keyPressed();
    
    background(255);
    stroke(255);
    noFill();
    
    for(int i = 0;i <objects.size(); i++)//displaying objects
    {
      objects.get(i).move();
      objects.get(i).display();
      if (! objects.get(i).alive)
      {
        objects.remove(i);//removes objects
      }
    }
    

    
    for(int i = 0; i < planes.size(); i ++) {
      planes.get(i).display();
       
      if(planes.get(i).x < -200) {
        planes.remove(i);
         
        baseX = (int)random(width, width + 500);
        baseY = 480;
        EnemyBases base = new EnemyBases(baseX,baseY);
        bases.add(base);
      }
    }
    
    // display the bases
    for(int i = 0; i < bases.size(); i ++) {
      bases.get(i).display();
      if(bases.get(i).x < -200) {
        bases.remove(i);
         
        baseX = (int)random(width, width + 500);
        baseY = (int)random(60,height -50);
        EnemyPlane enemy = new EnemyPlane(x,y);
        planes.add(enemy);
      }
    }
    
   // bomb detection
   for(int i = 0; i < bombs.size();i ++) {
     Bomb bomb = bombs.get(i);
     println(bomb.position.x);
     for(int j = 0 ; j < bases.size(); j ++) {
       EnemyBases eBase = bases.get(j);
       if(dist(bomb.position.x, bomb.position.y,eBase.x,eBase.y) <= 100) {
         eBase.explosion(eBase.x,eBase.y);
         bomb.explosion();
         bomb.touched();
         bases.remove(j);
         

         score += 2;
       }
     }
   }
   
   // bomb for plane
   for(int i = 0 ; i < bombs.size()  ; i ++)//hit detection
  {
    Bomb bomb = bombs.get(i);
   // println(bullet.position.x);
    for (int j = 0; j < planes.size() ; j ++)
    {
      EnemyPlane zombie1 = planes.get(j);
      if (dist(bomb.position.x,bomb.position.y,zombie1.x,zombie1.y) <=50)
      {
        bomb.explosion();
        bombs.remove(i);
        planes.remove(j);
        
        // spawn a new plane 
        x = (int)random(width, width + 500);
        y = (int)random(60,height - 200);
        EnemyPlane enemy = new EnemyPlane(x,y);
        planes.add(enemy);
        score ++;
      } 
      

    }
  }
    
   for(int i = 0 ; i < bullets.size()  ; i ++)//hit detection
  {
    Bullet bullet = bullets.get(i);
   // println(bullet.position.x);
    for (int j = 0; j < planes.size() ; j ++)
    {
      EnemyPlane zombie1 = planes.get(j);
      if (dist(bullet.position.x,bullet.position.y,zombie1.x,zombie1.y) <=20)
      {
        bullet.explosion();
        bullet.touched();
        planes.remove(j);
        x = (int)random(width, width + 500);
        y = (int)random(60,height - 200);
        EnemyPlane enemy = new EnemyPlane(x,y);
        planes.add(enemy);
        score ++;
      } 
    }
  }
  
  // number of lives
  textSize(15);

  image(life,30,20);
  text("X" + lifes,53,33);
  text(score,30,45);
  
  // number of bombs
  image(bombSymbol, 80, 20);
  text("X" + numOfBombs,105,33);
  
  text("Fuel:" + (int)fuel +"%",150,33);
  }
  
}

// Back button in the menu
void backButton() {
  
  if( ( mouseX >= 10) && (mouseX <= 225) && (mouseY >= 520) && (mouseY <= 580) )
  {  
    image(backButton2, 10, 520);
  }
  
    if(mousePressed)
    {
      // Choose plane screen
      if(singlplayer) {
        if( ( mouseX >= 10) && (mouseX <= 225) && (mouseY >= 520) && (mouseY <= 580) )
        {  
          singlplayer = false;
          optionMenu = true;
        
        }
      }
      
      // how to play screen
      if(howToPlay) {
        if( ( mouseX >= 10) && (mouseX <= 225) && (mouseY >= 520) && (mouseY <= 580) )
        {  
          howToPlay = false;
          optionMenu = true;
        
        }
      }
      
     // Choose plane screen
      if(multiplayer) {
        if( ( mouseX >= 10) && (mouseX <= 225) && (mouseY >= 520) && (mouseY <= 580) )
        {  
          multiplayer = false;
          optionMenu = true;
        
        }
      }
  }
}
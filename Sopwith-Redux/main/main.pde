MainMenu main = new MainMenu();
Option option = new Option();
Single single = new Single();
Multi multi = new Multi();
Controls controls = new Controls();
Instructions instructions = new Instructions();

PImage bg, oldPlane, modernPlane, tFighter;

// screen booleans
boolean singlplayer = false;
boolean multiplayer = false;
boolean howToPlay = false;
boolean mainMenu = true;
boolean optionMenu = false;
boolean exit = false;

// plane options for players.
boolean oldPlaneBoolean = false;
boolean modernPlaneBoolean = false;
boolean tFighterBoolean = false;

void setup() {
  size(800, 600); 
  
  // set image variables
  bg = loadImage("background.png");
  oldPlane = loadImage("oldplane.png");
  modernPlane = loadImage("modernplane.png");
  tFighter = loadImage("tFighter.png");
}

void draw() {
  
  background(bg);
  // Main menu screen
  if( mainMenu== true) {
    main.display();  
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
  
}
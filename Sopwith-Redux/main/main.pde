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

// Back button in the menu
void backButton() {
  fill(#FFFFFF); 
  stroke(#FFFFFF);
  rect(50,500,50,50);
  
  
  if( ( mouseX >= 50) && (mouseX <= 100) && (mouseY >= 500) && (mouseY <= 550) )
  {  
    fill(#FFFFFF); 
    stroke(#FF0303);
    strokeWeight(10);
    rect(50,500,50,50, 5);
    strokeWeight(1);
    stroke(#FFFFFF); 
  }
  
    if(mousePressed)
    {
      // Choose plane screen
      if(singlplayer) {
        if( ( mouseX >= 50) && (mouseX <= 100) && (mouseY >= 500) && (mouseY <= 550) )
        {  
          singlplayer = false;
          optionMenu = true;
        
        }
      }
      
      // how to play screen
      if(howToPlay) {
        if( ( mouseX >= 50) && (mouseX <= 100) && (mouseY >= 500) && (mouseY <= 550) )
        {  
          howToPlay = false;
          optionMenu = true;
        
        }
      }
      
     // Choose plane screen
      if(multiplayer) {
        if( ( mouseX >= 50) && (mouseX <= 100) && (mouseY >= 500) && (mouseY <= 550) )
        {  
          multiplayer = false;
          optionMenu = true;
        
        }
      }
  }
}
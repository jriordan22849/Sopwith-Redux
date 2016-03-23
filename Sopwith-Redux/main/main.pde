MainMenu main = new MainMenu();
Option option = new Option();
Single single = new Single();
Multi multi = new Multi();
Instructions instructions = new Instructions();

// screen booleans
boolean singlplayer = false;
boolean multiplayer = false;
boolean howToPlay = false;
boolean mainMenu = false;
boolean optionMenu = true;
boolean exit = false;

void setup() {
  size(800, 600); 
}

void draw() {
  
  // Main menu screen
  if( mainMenu== true) {
    main.display();  
  }
  
  if(optionMenu == true) {
    option.display();
  }
  
  if(singlplayer == true) {
    single.display();
  }
  
  if(multiplayer == true) {
  
  }
  
  if(howToPlay == true) {
    
  }
  
  if(exit == true) {
   exit(); 
  }
  
}

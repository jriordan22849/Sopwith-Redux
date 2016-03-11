MainMenu main = new MainMenu();

// screen booleans
boolean singlplayer = false;
boolean multiplayer = false;
boolean howToPlay = false;
boolean mainMenu = true;
boolean optionMenu = false;

void setup() {
  size(600, 600); 
}

void draw() {
  
  // Main menu screen
  if( mainMenu== true) {
    main.display();  
  }
  
}

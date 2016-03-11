MainMenu main = new MainMenu();
Option option = new Option();

// screen booleans
boolean singlplayer = false;
boolean multiplayer = false;
boolean howToPlay = false;
boolean mainMenu = true;
boolean optionMenu = false;

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
  
}

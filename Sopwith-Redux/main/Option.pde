// Level Options variables
int SBX = (width / 2) - 100;
int SBY = 200;
int SBY1 = 300;
int SBY2 = 400;
int SBXSize = 200;
int SBYSize = 50;
int size = 50;

boolean colour1 = false;
boolean colour2 = false;
boolean colour3 = false;
class Option {
  
  int x = width / 4;
  int y = 100;;
  int rect_size = 10;
  String gameName = "Sopwith-Redux";
  String singleLabel = "Single Player";
  String multiLabel = "Multiplayer";
  String howToPlayLabel = "How To Play";
  String exitLabel = "Exit Game";
  
  
void display()
{
  int boxX = 200;
  int box_size = 40;
  //background(#DEDEDE); 
  background(bg);
  // colour below is red.
  fill(#FF0505);
  stroke(#FF0505);
  textSize(50);
  text(gameName,width / 4, height /6);
  
  // text size for menu boxes
  textSize(25);
  

    
  // First menu box
  fill(255); 
  rect((width / 2) - 100, SBY - 50, SBXSize, SBYSize, 5 );

  fill(0);
  text(singleLabel,width / 2.5, 185);

    
  // second menu box
  fill(255); 
  rect((width / 2) - 100, (height / 2) -50, SBXSize, SBYSize, 5 );
  fill(0);
  text(multiLabel,width / 2.4, 285);

    
  // third menu box
  fill(255); 
  rect((width / 2) - 100, SBY + 150, SBXSize, SBYSize, 5 );
  fill(0);
  text(howToPlayLabel,width / 2.5, 385);
  
  // fourth box
  fill(255); 
  rect((width / 2) - 100, SBY + 250, SBXSize, SBYSize, 5 );
  fill(0);
  text(exitLabel,width / 2.35, 485);
  

    
      
  // First box on menu screen  
  if( (mouseX >= (width / 2) - 100) && (mouseX <= (width / 2) - 100 + SBXSize) && (mouseY >= 150) && (mouseY <= 200) )
  {
    fill(#FFC8C6);
    stroke(#5FF765);
    rect((width / 2) - 100, SBY - 50, SBXSize, SBYSize, 5 ); 
    
    fill(0);
    text(singleLabel,width / 2.5, 185);
  }  // end colour change and boolean for first box
  
  // Second box on menu screen
  if( (mouseX >= (width / 2) - 100) && (mouseX <= (width / 2) - 100 + SBXSize)&& (mouseY >= (height / 2) - 50) && (mouseY <= 300 + SBYSize - 50) )
  {
    fill(#FFC8C6);
    stroke(#ED7A37);
    rect((width / 2) - 100, (height / 2) - 50, SBXSize, SBYSize, 5 );
    
    fill(0);
    text(multiLabel,width / 2.4, 285);
  }  // end colour change and boolean for first box
  
  // Third box on menu screen
  if( (mouseX >= (width / 2) - 100) && (mouseX <= (width / 2) - 100 + SBXSize)&& (mouseY >= 400 - 50) && (mouseY <= 400 + SBYSize - 50) )
  {
    fill(#FFC8C6);
    stroke(#009CFA);
    rect((width / 2) - 100, SBY + 150, SBXSize, SBYSize, 5 );
    
    fill(0);
    text(howToPlayLabel,width / 2.5, 385);
  }  // end colour change and boolean for first box
  
  
  // fourth box 
  if( (mouseX >= (width / 2) - 100) && (mouseX <= (width / 2) - 100 + SBXSize)&& (mouseY >= 450) && (mouseY <= 500) )
  {
    fill(#FFC8C6);
    stroke(#009CFA);
    rect((width / 2) - 100, SBY + 250, SBXSize, SBYSize, 5 );
   
    fill(0);
    text(exitLabel,width / 2.35, 485);
  }  // end colour change and boolean for first box
  
  
  // timer for boolean to switch so the mulitplayer screen doesnt open.
  int timer = millis()-start;
  
  if(timer > 4000) {
    screenShift = !screenShift;
  }
  
  
  if(mousePressed)
  {
    if(screenShift) {
    if( (mouseX >= (width / 2) - 100) && (mouseX <= (width / 2) - 100 + SBXSize) && (mouseY >= 150) && (mouseY <= 200) )
    {
      singlplayer = true;
      optionMenu = false;
    }  // end colour change and boolean for first box
  
    //Second box on menu screen
    if( (mouseX >= (width / 2) - 100) && (mouseX <= (width / 2) - 100 + SBXSize)&& (mouseY >= (height / 2) - 50) && (mouseY <= 300 + SBYSize - 50) )
    {  
     multiplayer = true;
     optionMenu = false;
    }  // end colour change and boolean for first box
  
    // Third box on menu screen
    if( (mouseX >= (width / 2) - 100) && (mouseX <= (width / 2) - 100 + SBXSize)&& (mouseY >= 400 - 50) && (mouseY <= 400 + SBYSize - 50) )
    {
      howToPlay = true;
      optionMenu = false;
    }  // end colour change and boolean for first box
  
    // fourth box 
    if( (mouseX >= (width / 2) - 100) && (mouseX <= (width / 2) - 100 + SBXSize)&& (mouseY >= 450) && (mouseY <= 500) )
    {
      exit = true;
      optionMenu = false;
    }  // end colour change and boolean for first box
  }
  }
   
}  // end void function 

}
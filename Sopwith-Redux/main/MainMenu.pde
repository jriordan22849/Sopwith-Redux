
class MainMenu {
  
  int x, y;
  int rect_size = 10;
  
  void display() {
     int x = width / 2;
     int y = height / 2;
     
     float centX = width / 2;
     String gameName = "Sopwith-Redux";
     String playLabel = "Play";
     
     int twxtciol = #FF0505;

     background(bg);
     
     // colour below is red.
     fill(#FF0505);
     stroke(#FF0505);
     
     // Display the hame name
     textSize(50);
     text(gameName,width / 4, height /6);
     
     // Display play label
     fill(#FFFFFF);
     rect(centX - 80, 250, 190, 70);
     
     
     
     fill(twxtciol);
     text(playLabel, centX - 40, height / 2);
     
     if( ( mouseX >= 320) && (mouseX <= 320 + 190) && (mouseY >= 250) && (mouseY <= 250 + 70) )
    {  
      fill(0);
      text(playLabel, centX - 40, height / 2);
    }  // end first if() for information box
    
    if(mousePressed)
    {
    // choose colour
    // if colour1 is selected 
    if( ( mouseX >= 320) && (mouseX <= 320 + 190) && (mouseY >= 250) && (mouseY <= 250 + 70) )
    {
       mainMenu = false;
       optionMenu = true;
    }
  }
}
  

   
}
class Single {
  
  void display() {
    // set background image
    background(bg2);

    image(backButton, 10, 525);
    
    // display planes for the user to select.
    // old plane 200 x 85
    image(oldPlane, 40, 300 );
    
    // 79×76
    // tFighter
    image(modernPlane, 300, 300);
    
    
    // 200×70
    //modern plane 
    //(mouseX >= 550) && (mouseX <= 750) && (mouseY >= 300) && (mouseY <= 370) 
   image(spaceShip, 570, 300);
   
  
   
   image(playGameButton, 215, 450);
   
   // players choice
   
   fill(#FC0303);
   stroke(#FC0303);
   if(sw) {
      rect(570, 410, 200,10, 5);
   } 
   if(mw) {
     rect(300, 410, 200,10, 5);
   } 
   if(ww2) {
     rect(40, 410, 200,10, 5);
   }
 
   
   
   if(mousePressed)
  {

    if( (mouseX >= 550) && (mouseX <= 750) && (mouseY >= 300) && (mouseY <= 370)  )
    {
    //  singlplayer = false;
      mw = false;
      ww2 = false;
      sw =true;
     // playScreen = true;
    } 
    if( (mouseX >= 330) && (mouseX <= 450) && (mouseY >= 300) && (mouseY <= 370)  )
    {
    //  singlplayer = false;
      sw = false;
      ww2 = false;
      mw = true;
     // playScreen = true;
    } 
    if( (mouseX >= 20) && (mouseX <= 260) && (mouseY >= 300) && (mouseY <= 370)  )
    {
    //  singlplayer = false;\
      sw = false;
      mw = false;
      ww2 = true;
     // playScreen = true;
    }// end colour change and boolean for first box
    
    if((mouseX >= 215) && (mouseX <= 585) && (mouseY >= 450) && (mouseY <= 510)) {
      if( (sw == true) || (mw == true) || (ww2 == true)) {
        singlplayer = false;
        playScreen = true;
      }
    }
  }
    
    backButton();
 } 
}
class Single {
  
  float x, y;
  
  String selectPlane = "Choose Plane:";
  
  
  void display() {
    x = width / 3.5;
    y = height /4;
    
    // set background image
    background(bg);
    
    // box for title.
    fill(#FFFFFF);
    rect(200,105, 400, 50, 5);
    
    // text for select plane
    fill(#FF0505);
    stroke(#FF0505);
    textSize(50); 
    text(selectPlane, x, y);
    
    // display planes for the user to select.
    // old plane 200 x 85
    image(oldPlane, 50, 300 );
    
    // 79×76
    // tFighter
    image(tFighter, 350, 300);
    
    // 200×70
    //modern plane 
    image(modernPlane, 550, 300);
    
    backButton();
    choosePlaneFun();
    
    
 } 
 
 void changeScreens() {
    singlplayer = !singlplayer;
    playScreen = !playScreen;
 }
 
 void choosePlaneFun() {
   
  if(mousePressed)
  {
    // if the old plane is selected
    if( (mouseX >= 50) && (mouseX <= 250) && (mouseY >= 300) && (mouseY <= 385) )
    {
       oldPlaneBoolean = true;
       modernPlaneBoolean = false;
       tFighterBoolean = false;
       println(oldPlaneBoolean);
       changeScreens();
    }  // end colour change and boolean for first box
  
    // if the t-fighter is selected
    if( (mouseX >= 350) && (mouseX <= 429) && (mouseY >= 300) && (mouseY <= 376) )
    {
       tFighterBoolean = true;
       oldPlaneBoolean = false;
       modernPlaneBoolean = false;
       println(tFighterBoolean);
       changeScreens();
    }  // end colour change and boolean for first box
    
    // if the modern plane is selected
    if( (mouseX >= 550) && (mouseX <= 750) && (mouseY >= 300) && (mouseY <= 370) )
    {
       modernPlaneBoolean = true;
       oldPlaneBoolean = false; 
       tFighterBoolean = false;
       println(modernPlaneBoolean);
       changeScreens();
    }  // end colour change and boolean for first box

  } 
 } 
}
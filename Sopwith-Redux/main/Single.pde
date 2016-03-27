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
    
    // tFighter
    image(tFighter, 350, 300);
    
    //modern plane 
    image(modernPlane, 550, 300);
    
    backButton();
 } 
  
}
class EnemyBases {
  
  int x, y;
  
  EnemyBases(int x, int y){
   this.x = x;
   this.y = y;
  }
  
  void display() {
    if(sw) {
      image(walker, x -= 2,y);
    } else if(mw) {
      image(walker, x -= 2,y);  
    } else if(ww2) {
      image(walker, x -= 2,y);
    }
    
  }
  
  void explosion(int x, int y)//when bullet hits the zombie it creates mini explosion
  {


    translate(x + 20,y);
    fill(255,0,0);
    ellipse(20,50,50,50);
    fill(255,255,0);
    ellipse(20,50,40,40);
    fill(255,0,0);
    ellipse(20,50,30,30);
    fill(255,255,0);
    ellipse(20,50,20,20);

  }
  
}
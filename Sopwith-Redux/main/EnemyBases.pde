class EnemyBases extends GameObjects {
  
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
  
   void removeObject() {
   if(x < -100) {
         alive = false;
     }
   }
  
}
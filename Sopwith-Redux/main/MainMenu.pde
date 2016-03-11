
class MainMenu {
  
  int x, y;
  int rect_size = 10;
  
  void display() {
     int x = width / 2;
     int y = height / 2;

     background(0); 
     
     // colour below is red.
     fill(#FF0505);
     stroke(#FF0505);
     rect(x, y, x + rect_size, y + rect_size);
     
  }
  
}

class Player extends GameObjects
{
  float buletCounter;
  boolean alive = true;
  float hand;
  float leg;
  
  Player() {
  }

  Player(float x ,float y)
  {
    position.x = x;// position of the player
    position.y = y;
    theta = 0;
   }

  void display()
  {  
     pushMatrix();
     translate(position.x,position.y);
     if(ww2 == true)
     {
       image(oldPlaneSmall, 20, 20);
     }
     if(sw == true)
     {
       image(spaceShipSmall, 20, 20);
     }
     if(mw == true)
     {
       image(modernPlaneSmall, 20, 20);
     }
     
     popMatrix();
   }
   
  void move()
  {
    
       if(position.x < 0 )//keeps the player in the box
        {
          position.x = 1;
        }
        if(position.x > 571)
        {
          position.x =570;
        }
        
        if(position.y < 0) {
          position.y = 1;
        }
        if(position.y > height) {
          position.y = height - 20;
        }
        
      forward.x = 5;
      down.y = 5;
      velocity.y = 2;
      position.add(velocity); 
      if(keyPressed)
      {
        switch(key)
        {
          case 'd':
          position.add(forward);//players go right
            break;
          case 'a':
          position.sub(forward);
            break;
          case 'w':
          position.sub(down);
            break;
          case 's':
          position.add(down);
            break;
            case ' ':
            if(alive == true)// creating a bullet
            { 
              Bullet bullet = new Bullet();
              bullet.position = position.get(); //we getting the player position and set the bullet posiotion the same   
              bullet.theta = theta;
              objects.add(bullet);
              bullets.add(bullet);
              alive =false;
              buletCounter = 0;
             }
           if(alive == false)//fire rate
            {
              buletCounter ++;
              if(buletCounter == 10 )
              {
                alive = true;
              }
            }
            break;
            case 'b':
            if(alive == true)// creating a bullet
            { 
              Bomb bomb = new Bomb();
              bomb.position = position.get(); //we getting the player position and set the bullet posiotion the same   
              bomb.theta = 2;
              objects.add(bomb);
              bombs.add(bomb);
              alive =false;
              buletCounter = 0;
             }
           if(alive == false)//fire rate
            {
              buletCounter ++;
              if(buletCounter == 10 )
              {
                alive = true;
              }
            }
            break;
        }
      }
    }
    
    void keyPressed() {
        if (key == CODED) {
          if (keyCode == UP) {
            position.sub(down); 
          } else if (keyCode == DOWN) {
            position.add(down);
            
          } else if (keyCode == LEFT) {
             position.sub(forward);
            
          } else if (keyCode == RIGHT) {
            position.add(forward);//players go right
            
          }
        } 
    }
}
int x, y;

int release=1;
void setup() {
  size(400, 400);
  frameRate(60);
  // Set start coords
  x = 200;
  y = 200;
  background(0);
}

void draw() {
   stroke(200,255,200);
  if (keyPressed) 
  {
    if (key == 'b' || key == 'B') 
    {
      stroke(255,0,255);
    }
  }
  //check();
  //rand();
}

void mouseClicked() 
{
  saveFrame("ethcysketchy#####.png");
}


void rand()
{

}

void keyPressed()
{
  loop();
 
  
  if (key==CODED)
  {
  if (keyCode==RIGHT  && x<width-10)
  {
    moveRight(1);
    //release=0;
  }
  else if (keyCode==DOWN  && y<height-10)
  {
    moveDown(1);
    //release=0;
  }
  else if (keyCode==UP  && y>10)
  {
    moveUp(1);
    //release=0;
  }
  else if (keyCode==LEFT  && x>10)
  {
    moveLeft(1);
    //release=0;
  }
  }
  
  



}



// Method to draw right line
void moveRight(int rep) 
{
  for (int i=0; i<rep*10; i++) //<>//
  {
    point(x+i, y);
  }
  x+=(10*rep);
}

void moveLeft(int rep) 
{
  for (int i=0; i<rep*10; i++)
  {
    point(x-i, y);
  }
  x-=(10*rep);
}

void moveDown(int rep) 
{
  for (int i=0; i<rep*10; i++)
  {
    point(x, y+i);
  }
  y+=(10*rep);
}

void moveUp(int rep) 
{
  for (int i=0; i<rep*10; i++)
  {
    point(x, y-i);
  }
  y-=(10*rep);
}

void moveUpRight(int rep)
{
  for (int i=0; i<rep*10; i++)
  {
    point(x+i, y-i);
  }
  x+=(10*rep);
  y-=(10*rep);
}

void moveDownRight(int rep)
{
  for (int i=0; i<rep*10; i++)
  {
    point(x+i, y+i);
  }
  x+=(10*rep);
  y+=(10*rep);
}

void moveDownLeft(int rep)
{
  for (int i=0; i<rep*10; i++)
  {
    point(x-i, y+i);
  }
  x-=(10*rep);
  y+=(10*rep);
}

void moveUpLeft(int rep)
{
  for (int i=0; i<rep*10; i++)
  {
    point(x-i, y-i);
  }
  x-=(10*rep);
  y-=(10*rep);
}
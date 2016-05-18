int x, y;

int release=1;
void setup() {
  size(400, 400);
  frameRate(10);
  // Set start coords
  x = 0;
  y = 0;
  background(0);
}

void draw() {
  fill(255);
  noLoop();
  drawName();
  //check();
}

void check()
{
  loop();
  stroke(200,255,200);
  
  
  if (key=='d' && release==1)
  {
    moveRight(1);
    //release=0;
    key='q';
  }
  else if (key=='s' && release==1)
  {
    moveDown(1);
    //release=0;
    key='q';
  }
  else if (key=='w' && release==1)
  {
    moveUp(1);
    //release=0;
    key='q';
  }
  else if (key=='a' && release==1)
  {
    moveLeft(1);
    //release=0;
    key='q';
  }
  if (keyPressed==false)
  {
    release=1;
  }
  



}

// Algorithm for your first name
void drawName() 
{

  stroke(200, 255, 200);
  moveDown(10);
  moveUpRight(6);
  moveDownRight(6);
  moveUpLeft(3);
  moveLeft(6);
  moveRight(6);
  moveDownRight(3);
  moveRight(3);
  moveUp(6);
  moveDown(1);
  moveRight(5);
  moveDown(5);
  moveRight(3);
  moveUp(5);
  moveRight(3);
  moveDown(5);
  moveLeft(3);
  moveRight(3);
  moveUp(10);
  moveDown(10);
  moveRight(3);
  moveUp(5);
  moveDownRight(5);
  moveUpRight(5);
  moveDownLeft(10);
}

// Method to draw right line
void moveRight(int rep) 
{
  for (int i=0; i<rep*10; i++)
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


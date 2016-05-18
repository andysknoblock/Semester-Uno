void settings()
{
  size(200, 200);
}
void setup()
{
}

float toPercent(int f)
{
  
  float g;
  g=f*.01;
  return g;
}


boolean isPositive(int g)
{
  boolean pos;
  if (g<0)
  {
    pos=false;
  } 
  else
  {
    pos=true;
  }
  return pos;
}


int minusOne(int g)
{
  int num;
  num=g-1;
  return num;
}


int numCounter(int g)
{
  int num;
  num=g+1;
  return num;
}

void draw()
{
  background(0);
  text(numCounter(mouseX),10,35);
  text(toPercent(mouseX),10,20);
  text(str(isPositive(mouseX)),10,50);
  text(minusOne(mouseX),10,65);
}
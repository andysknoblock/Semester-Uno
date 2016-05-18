float [] array = new float [640];
int a=0;
float ang=0;
void setup()
{
  size(640,480);
  frameRate(10);
  while(a<array.length)
  {
    array[a]=width/2;
    a++;
  }
}

void draw()
{
  background(155);
  a=0;
  while(a<array.length)
  {
    fill(0);
    array[a]+=cos(ang)*300;
    ellipse(a,array[a],2,2);
    ang+=PI/180;
    a++;
  }
}
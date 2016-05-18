// andy knoblock

void setup()
{
  size(1000,1000);
  frameRate=60;
}

void grid(int xlines,int ylines)
{
  int xstep=width/xlines;
  int a=width/xlines;
  int b=height/ylines;
  int ystep=height/ylines;
  while(a<width)
  {
    stroke(200,200,255);
    line(a,0,a,height);
    stroke(200/2,200/2,255/2);
    line(a-1,0,a-1,height);
    stroke(200/2,200/2,255/2);
    line(a+1,0,a+1,height);
    a+=xstep;
  }
  while(b<height)
  {
    stroke(200,255,200);
    line(0,b,width,b);
    stroke(200/2,255/2,200/2);
    line(0,b-1,width,b-1);
    stroke(200/2,255/2,200/2);
    line(0,b+1,width,b+1);
    b+=ystep;
  }
  a=1;
  b=1;
}

void draw()
{
  background(10,10,10);
  grid(10,10);

}

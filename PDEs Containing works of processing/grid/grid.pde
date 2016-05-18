// andy knoblock
//grid
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
    //line(a,0,a,height);
    line(a,0,width,a);/////////legit
    //text(a,a+2,10);
    a+=xstep;
  }
  while(b<height)
  {
    stroke(200,255,200);
    //line(0,b,width,b);
    line(0,b,b,height);/////////legit
    //text(b,10,b-3);
    b+=ystep;
  }
  a=0;
  b=0;
}

void draw()
{
  background(10,10,10);
  grid(200,200);

}

float spot=20,angle=0,circles=25,gravity=.1;
float[][] x = new float[int(circles)+1][5];
//[0]=x
//[1]=y
//[2]=xvel
//[3]=yvel
//[4]=radius
void setup()
{
  size(640,480);
  int a=0;
  while (a<circles)
  {
    
    x[a][2]=random(-5,5);
    x[a][3]=random(-5,5);
    x[a][4]=random(30,70);
    x[a][0]=random(70+x[a][4],width-70-x[a][4]);
    x[a][1]=random(70+x[a][4],height-70-x[a][4]);
    a++;
  }
}


void legit_circle(float x,float y, float w)
{
  
    noStroke();
    fill(255,150);
    ellipse(x,y,w,w);
    
}

void doCircle()
{
  int a=0;
  while (a<circles)
  {
    x[a][0]+=x[a][2];
    x[a][1]+=x[a][3];
    
    
    int b=0;
    while(b<circles)
    {
      if (b==a)
      {
        b++;
      }
      float xdist,ydist,dist;
      xdist=x[a][0]-x[b][0];
      ydist=x[a][1]-x[b][1];
      dist=sqrt((xdist*xdist)+(ydist*ydist));
      if (dist+20<x[a][4]*.5+x[b][4]*.5)
      {
        float ang;    
        ang=atan2(ydist,xdist);
        x[a][2]+=cos(ang)*3;
        x[a][3]+=sin(ang)*3;
        x[b][2]-=cos(ang)*3;
        x[b][3]-=cos(ang)*3;
      }
      b++;
    }
    if (x[a][0]<x[a][4]*.5+1 || x[a][0]>width-x[a][4]*.5-1)
    {
      x[a][2]*=-1.05;
    }
    if (x[a][1]+x[a][3]+x[a][4]*.5 > height)
    {
      x[a][3]*=-1.05;
    }
    x[a][3]+=gravity;
    x[a][2]*=.99;
    x[a][3]*=.99;
    if (x[a][0]+x[a][4]*.5<0)
    {
      x[a][2]=abs(x[a][2])*(1.01);
    }
    legit_circle(x[a][0],x[a][1],x[a][4]);
    a++;
  }
}

void draw()
{
  background(0);
  doCircle();
  
  
  
}
float x1=10,y1=450,y2=30,x3=500,x_dist=x3-x1,y_dist=y1-y2;
int selected=0;
void setup()
{
  size(640,480);
}
float hypot(float x,float y)
{
  float g=x*x+y*y;
  float a=sqrt(g);
  return(a);
}

void pointy(float x,float y,float q)
{
  float g=4,a=0,r=255;
  noStroke();
  
  if (q==1)
  {
    g=8;
    
      fill(0,100,255);
      ellipse(x,y,g,g);
      
    
    
    
  }
  else
  {
  fill(200,0,200);
  ellipse(x,y,g,g);
  }
  
}



void mousePressed()
{
  if (mouseX>0 && mouseX<x1+20 && mouseY>y2-20 && mouseY<y2+20)
  {
    selected=1;
  }
  else if (mouseX>x3-10 && mouseX<x3+10 && mouseY>y1-10 && mouseY<y1+10)
  {
    selected=2;
  }
  else
  selected=0;
}

float angle(float x,float y)
{
  float a=y/x;
  float b=asin(a),c;
  c=b*180/PI;
  return c;
}

void draw()
{
  background(random(230,240));
  fill(0);
  textSize(30);
  text("Angle Converter",width/2-120,40);
  textSize(15);
  text("Click near point to select, click elsewhere to deselect",10,10);
  text("Andy Knoblock",500,20);
  fill(255,200,200);
  stroke(200,255,200);
  triangle(x1,y1,x1,y2,x3,y1);
  stroke(0,0,200);
  line(x1,y1+10,x3,y1+10);
  fill(0);
  textSize(10);
  text((x3-x1)/10,(x3+x1)/2,y1+25);
  line(x1-5,y1,x1-5,y2);
  text((y1-y2)/10,10,(y1+y2)/2);
  if (selected==1 && mouseY<450)
  {
    pointy(x1,mouseY,1);
    y2=mouseY;
  }
  else
  pointy(x1,y2,0);
  if (selected==2 && mouseX>20)
  {
    pointy(mouseX,y1,1);
    x3=mouseX;
  }
  else
  pointy(x3,y1,0);
  fill(0);
  text(angle(x3-x1,y1-y2),x3,y1+10);
  text(angle(y1-y2,x3-x1),x1,y2);
  text("Hypotenuse= " + hypot(x3-x1,y1-y1),400,height/2);
}
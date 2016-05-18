// andy knoblock
//zoog

float x=0, y=0, g=0, b=0, r=0, z=31,q=61,spd=10,y_spd=10;

void setup()
{
  size(640, 480);
}
void draw_zoog(float a, float c)
{

  b=mouseX/2;
  g=mouseY/2;

  ellipseMode(CENTER);
  rectMode(CENTER);

  stroke(0);
  fill(150, 0, 0);
  rect(a+x+x, c+y+y, 20, 100);

  fill(0, 0, 200);
  ellipse(a-x, c-y-30, 60, 60);

  fill(0);
  ellipse(a+x-20, c+y-30, 16, 32);
  ellipse(a-x+20, c+y-30, 16, 32);
  stroke(0, 0, 0);
  line(a+x-10, c-y+50, a+x+x-20, c+y+60);
  line(a-x+10, c+y+50, a+x+20, c-y-y+60);
}

void mouse_click()
{
  if (mousePressed==true)
  {
    x+=30;
    y+=30;
    if (r<255)
    {
      r+=25;
    }
  }
  if (r>0)
  {
    r-=1;
  }
  if (y>0)
  {
    y-=5;
  }
  if (x>0)
  {
    x-=5;
  }
}

void draw()
{
  background(r, g, b);
  draw_zoog(mouseX, mouseY);
  draw_zoog(b, g);
  if (z<610 && z>30)
  {
    z+=spd;
  }
  else 
  {
    spd*=-1;
    z+=spd;
  }
  if (q>60 && q<420)
  {
    q+=y_spd;
  }
  else 
  {
    y_spd*=-1;
    q+=y_spd;
  }
  draw_zoog(z,q);
  mouse_click();
}


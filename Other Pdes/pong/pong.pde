
float p1x=40, p1spd=0, p2spd=0, p1y=1, p2x=965, p2y=1, x=500, y=250, xspd=-1, yspd=1, w=60, h=60, r=0, g=0, b=0;
boolean hit=false;

void setup()
{
  size (1000, 500);
  frameRate(200);
}

void draw_ball()
{
  noFill();
  stroke(200, 200, 255);
  ellipse(x, y, w, h);
  stroke(100, 100, 255/2);
  ellipse(x, y, w-1, h-1);
  stroke(100, 100, 255/2);
  ellipse(x, y, w+1, h+1);

  stroke(200/4, 200/4, 255/4);
  ellipse(x, y, w+2, h+2);
  stroke(100/2, 100/2, 255/4);
  ellipse(x, y, w-2, h-2);
  /////whole thing
  fill(r, g, b);
  ellipse(x, y, w-3, h-3);
  if (hit==true)
  {
    r=200;
    g=200;
    b=255;
    hit=false;
  }
  if (r>0)
  {
    r--;
  }
  if (g>0)
  {
    g--;
  }
  if (b>0)
  {
    b--;
  }
  if (y<30 || y>height-30)
  {
    yspd*=-1;
    hit=true;
  }
  x+=xspd;
  y+=yspd;
  if (xspd>0)
  {
  xspd+=.001;
  }
  else
  {
  xspd-=.001;
  }
  if (yspd>0)
  {
  yspd+=.001;
  }
  else
  {
  yspd-=.001;
  }
}

void draw_p1()
{
  noStroke();
  fill(0, 200, 200);
  rect(p1x, p1y, 5, 80, 5);
  if (keyPressed == true)
  {
    if (key == 's' && p1y+80<height)
    {
      if (p1spd<3)
      {
        p1spd+=.02;
      }
    }
    if (key == 'w' && p1y>0)
    {
      if (p1spd>-3)
      {
        p1spd-=.02;
      }
    }
  }
  if (y>p1y-w/2 && y<p1y+80+w/2 && x<76 && x>73)
  {
    hit=true;
    xspd*=-1;
  }
  p1y+=p1spd;
  if (p1spd>0)
  {
    p1spd-=.01;
  }
  if (p1spd<0)
  {
    p1spd+=.01;
  }
  if (p1y>height-80)
  {
    p1spd-=.1;
  }
  if (p1y<0)
  {
    p1spd+=.1;
  }
}
/////////////////////////////////////////////////////////////////
void draw_p2()
{
  noStroke();
  fill(0, 200, 200);
  rect(p2x, p2y, 5, 80, 5);
  if (keyPressed == true)
  {
    if (keyCode == DOWN && p2y+80<height)
    {
      if (p2spd<3)
      {
        p2spd+=.02;
      }
    }
    if (keyCode == UP && p2y>0)
    {
      if (p2spd>-3)
      {
        p2spd-=.02;
      }
    }
  }
  if (y>p2y-w/2 && y<p2y+80+w/2 && x<width-76 && x>width-73)
  {
    hit=true;
    xspd*=-1;
  }
  p2y+=p2spd;
  if (p2spd>0)
  {
    p2spd-=.01;
  }
  if (p2spd<0)
  {
    p2spd+=.01;
  }
  if (p2y>height-80)
  {
    p2spd-=.1;
  }
  if (p2y<0)
  {
    p2spd+=.1;
  }
}

void draw()
{
  background(0, 0, 0);
  draw_ball();
  draw_p1();
  draw_p2();
}


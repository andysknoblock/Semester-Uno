float x,y=height,shot_angles=-45,rect_ang=22.5,leng=100,z=0;
float shot_ang=shot_angles*(PI/180);
void setup()
{
  size(640,480);
}

void draw_rect(float angle,float longth)
{
  float rad=angle*(PI/180);
  int x1;
  int y1;
  x1=width/2;
  y1=height/2;
  x1-=cos(rad)*longth/2;
  y1-=sin(rad)*longth/2;
  stroke(255,200,255);
  strokeWeight(1);
  line(x1,y1,x1+cos(rad)*longth, y1+sin(rad)*longth);
}
void draw_shot()
{
  if (z==0)
  {
  x=(width/2)+(cos(shot_ang)*150);
  y=(height/2)+(sin(shot_ang)*150);
  }
  z=1;
  fill(0,0,255);
  stroke(0,200,200);
  ellipse(x,y,3,3);
  x-=cos(shot_ang);
  y-=sin(shot_ang);
  fill(255);
  text(shot_ang*180/PI,20,20);
}

void check_col()
{
  if (y<height/2+1 && y>height/2-1)
  {
    shot_ang=(rect_ang*2-shot_angles)*PI/180;
  }
}

void draw()
{
  background(0);
  draw_rect(rect_ang,leng);
  draw_shot();
  check_col();
}
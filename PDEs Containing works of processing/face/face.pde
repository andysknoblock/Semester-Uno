///andy knoblock
float w=0,x,y;
void setup()
{
  size(400,400);
  frameRate(1);
}

void draw_stuff()
{
  stroke(0,0,0);
  strokeWeight(1);
  w=random(120,160);
  fill(232,229,138);
  ellipse(200,200,w,250);
  strokeWeight(2);
  line(180,270,220,270);
  strokeWeight(4);
  x = random(20,25);
  y = random(10,15);
  fill(0,0,255);
  ellipse(170,150,x,y);
  x = random(20,25);
  y = random(10,15);
  fill(255,0,0);
  ellipse(230,150,x,y);
  strokeWeight(2);
  line(190,220,210,220);
  line(200,200,210,220);
  strokeWeight(10);
  stroke(98,77,21);
  line(160,125,200,135);
  line(240,125,200,135);
}

void draw()
{
  background(40);
  draw_stuff();
}

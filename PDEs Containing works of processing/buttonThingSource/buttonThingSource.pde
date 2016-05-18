int x = 50;
int y = 50;
int w = 100;
int h = 75;
boolean rad=false;
boolean click=false;
void settings() {
  size(400,400);
}

void draw() {
  background(mouseX*255/400,mouseY*255/400,random(200,210));
  stroke(200,255,255);
  if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h )
  {
    rad=true;
  }
  
  else 
  {
  rad=false;
  click=false;
  }
  if (rad==true && click==false)
  {
    fill(random(160,200),random(215,255),random(215,255));
  } 
  else if (rad != true)
  {
    fill(0,random(180,220),random(60,100));
  }
  else
  {
    fill(random(200,255),random(0,50),random(100,140));
  }
  rect(x,y,w,h,7);
  fill(0);
  text("Button On: " + str(click),60,40);
}

void mousePressed()
{
  if (rad==true)
  {
    click=!click;
  }
  else
  click=false;
}
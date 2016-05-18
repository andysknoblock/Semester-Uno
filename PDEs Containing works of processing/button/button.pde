//history
//andy k
float r=0,g=0,b=0,z=0,ln=860/70;

void setup()
{
  size(900, 400);
  background(0);
  frameRate(100);
}
 void info(float x, float y, float h, String output)
 {
   fill(255,180,180);
   textSize(h-3);
   text(output,x,y+5);
 }

void button (float x, float y, float w, float h, float yr, String string, String output, boolean bottom)
{
  
  noFill();
  
  w++;
  h++;
  stroke(100, 100, 227);
  rect(x, y, w, h, 7);
  w++;
  h++;
  stroke(100, 100, 227);
  rect(x, y, w, h, 7);
  w++;
  h++;
  stroke(50, 50, 120);
  rect(x, y, w, h, 7);
  w++;
  h++;
  stroke(40,40, 100);
  rect(x, y, w, h, 7);
  w-=3;
  h-=3;
  stroke(200, 200, 255);
  rect(x, y, w, h, 7);
  //////////////mouse on button
  
  if (mouseX>=x && mouseX<=x+w && mouseY>=y && mouseY<=y+h)
  {
    
    info(x+5,y+h+h,h ,output);
    fill(240,240, 240);
    rect(x, y, w, h, 7);
    fill(0,0,0);
    
  } 
  ///no mouse on button
  
  else
  {
    fill(240,240, 240);
    noFill();
    stroke(200, 200, 255);
  }
  
  textSize(h-5);
  text(string, x+5, y+h-5);
  stroke(200,200,255);
  if (bottom==true)
  {
    line(x+(w/2),y+h,ln*yr,150);
  }
  else
  {
    line(x+(w/2),y,ln*yr,150);
  }
}

////////////////////////////end of button/////////////////////////

void liney(float a)
{
  float d=0;
  stroke(200,255,200);
  line (20,a,880,a);
  d++;
  stroke(200,255/d,200/d);
  line (20,a+d,880,a+d);
  line (20,a-d,880,a-d);
  d++;
  stroke(200/d,255/d,200/d);
  line (20,a+d,880,a+d);
  line (20,a-d,880,a-d);
  d++;
  stroke(200/d,255/d,200/d);
  line (20,a+d,880,a+d);
  line (20,a-d,880,a-d);
  d++;
  stroke(200/d,255/d,200/d);
  line (20,a+d,880,a+d);
  line (20,a-d,880,a-d);
  d++;
  stroke(200/d,255/d,200/d);
  line (20,a+d,880,a+d);
  line (20,a-d,880,a-d);
  d++;
  stroke(200/d,255/d,200/d);
  line (20,a+d,880,a+d);
  line (20,a-d,880,a-d);
}

//////////////////////////////end of line//////////////////////////

void draw()
{
  background(0);
  liney(150);
  button(10, 10, 110, 20, 6, "Eniac - 1946", "First Computer Ever",true);
  button(20, 250, 255, 20, 8, "Ibm Electronic Calculator -1948", "Plotted course of 1969 Apollo flight",false);
  button(130, 70, 130, 20, 16, "Tx - 0 1956", "First Programmable Computer",true);
  button(230, 5, 130, 20, 25, "PDP - 8 1965", "First Commercially Sold Minicomputer",true);
  button(300, 320, 150, 20, 41, "Osborne I - 1981", "First portable computer",false);
  button(550, 240, 220, 20, 53, "Pentium Processor - 1993", "Graphics and music on PC's",false);
  button(650, 90, 170, 20, 61, "Max OS X - 2001", "Graphics and music on PC's",true);
  button(700, 300, 100, 20, 70, "Ipad - 2010", "First tablet",false);
}


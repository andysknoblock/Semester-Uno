//history
// andy knoblock
//float [] x_val  = new float [8];
//float [] y_val  = new float [8];
float ln=860;
int a=0,b=0;
void setup()
{
  size(900,400);
}

void hist(String str,float x, float y)
{
  text(str,x,y);
  stroke(255,200,200);
  line(x,y+5,ln/8+20,150);
}

void draw()
{
  a=mouseX;
  b=mouseY;
  background(20);
  stroke(200,255,200);
  line(20,150,880,150);
  stroke(100,255/2,100);
  line(20,149,880,149);
  line(20,151,880,151);
  stroke(100/2,255/4,100/2);
  line(20,148,880,148);
  line(20,152,880,152);
  textSize(30);
  textAlign(CENTER);
  text("Historic Computer Systems",width/2,40);
  textSize(15);
  hist("Eniac - 1946",a,b);
}

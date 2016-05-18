//I am not using a class just cuz. Functions instead are better

float total=0,lastPress=-1,c,num=0,operators=0,totally=0,dec=0;
String tota="",mode="ang";
float sins=0;
Boolean opPress=false,ePress=false,spress=false,tan=false,negative=false,decimal=false;
float nums[] = new float [100];
String operator[] = new String [100];
String sin[] = new String [100];
float sin_vals [] = new float [100];
void setup()
{
  size(400,520);
  background(0);
  frameRate(60);
  //button[0] = new Button(20,200,60,40,0,255,255,10,10,10,6);
}




void draw()
{
  background(0);
  make_back();
  make_buttons(5,50,160,60,40,1);
  make_buttons(5,50,200,60,40,6);
  draw_operator(80,300,60,40,255,200,255,10,150,150,"+");
  draw_operator(140,300,60,40,255,200,255,10,150,150,"-");
  draw_operator(200,300,60,40,255,200,255,10,150,150,"*");
  draw_operator(260,300,60,40,255,200,255,10,150,150,"/");
  //draw_sin(110,340,60,40,100,255,255,150,200,0,"sin");
  //draw_sin(170,340,60,40,100,255,255,150,200,0,"cos");
  //draw_sin(230,340,60,40,100,255,255,150,200,0,"tan");
  button(290,250,60,40,255,0,255,10,255,10,"=");
  cleary(50,250,60,40,255,0,255,10,255,10,"clear");
  //ang_rad(width/2-60,250,60,40,0,0,0,255,125,0,"ang",0);
  //ang_rad(width/2,250,60,40,0,0,0,255,125,0,"rad",1);
  neg(200,250,60,40,255,0,255,10,255,255,"+/-");
  decimal(140,250,60,40,255,0,255,10,255,255,".");
  squart(260,350,60,40,200,200,0,255,0,0,"sqrt");
  cosin(200,350,60,40,200,200,0,255,0,0,"cos");
  sine(140,350,60,40,200,200,0,255,0,0,"sin");
  tangent(80,350,60,40,200,200,0,255,0,0,"tan");
  noStroke();
  fill(255,random(10));
  rect(0,0,width,height);
  disp();
  if (lastPress!=-1)
  {
    c++;
  }
  if (c==30)
  {
    lastPress=-1;
    c=0;
    
  }
  //button[0].display();
}
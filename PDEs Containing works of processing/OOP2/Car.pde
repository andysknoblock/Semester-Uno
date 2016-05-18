class Car
{
 float x,y,xspd,w,h,yspd;
 color c;
  
 Car (float X, float Y, float Xspd, float W,  color C)
 {
   x=X;
   y=Y;
   xspd=Xspd;
   //yspd=Yspd;
   c = C;
   w=W;
   h=w/5;
 }
  
 void display()
 {
   fill(c);
   noStroke();
   rect(x,y,w,h,width/10);
   fill(0);
   ellipse(x+w/8,y+h,w/5,w/5);
   ellipse(x+(w/8)*7,y+h,w/5,w/5);
   //stroke(255,255,0);
   //line(x+w+xspd,y,x+w+xspd+10,y);
   //line(x+w+xspd,y+h,x+w+xspd+10,y+h);
 }
 
 void move()
 {
   x+=xspd;
   if (x>width)
   {
     x-=width+w;
   }
   if (x+w<0)
   {
     x=width-1;
   }
 }
}
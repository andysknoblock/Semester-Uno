//this is a lie  This is not the class just functions
void make_back()
{
  float r=30,b=200,g=200,r1=200,b1=100,g1=100,rdec=(r1-r)/height,gdec=(g1-g)/height,bdec=(b1-b)/height;
  int a=0;
  while(a<=height)
  {
    stroke(r,g,b);
    line(0,a,width,a);
    r+=rdec;
    g+=gdec;
    b+=bdec;
    a++;
  }
  
}

void draw_button2(float x, float y, float w, float h,float r, float g, float b,float r1, float g1,float b1,float ans)
{
  float rdec=(r1-r)/h,gdec=(g1-g)/h,bdec=(b1-b)/h;
  int a=0;
  stroke(r,g,b);
  while (a<h)
  {
    stroke(r,g,b);
    line(x,y+a,x+w,y+a);
    line(x,y,x+w,y);   
    r+=rdec;
    g+=gdec;
    b+=bdec;
    a++;
  }
  
  textAlign(RIGHT);
  
  fill(200,240,255);
  text(ans,w,y+h/2+5);
}
void draw_button3(float x, float y, float w, float h,float r, float g, float b,float r1, float g1,float b1,String ans)
{
  float rdec=(r1-r)/h,gdec=(g1-g)/h,bdec=(b1-b)/h;
  int a=0;
  stroke(r,g,b);
  while (a<h)
  {
    stroke(r,g,b);
    line(x,y+a,x+w,y+a);
    //line(x+5,y,x+w-5,y);   
    r+=rdec;
    g+=gdec;
    b+=bdec;
    a++;
  }
  
  textAlign(RIGHT);
  textSize(10);
  fill(0,50,50);
  text(ans,w,y+h/2+5);
  textSize(15);
}

///regular boring button///////////////////////////////////////////////////////////////////

void draw_button(float x, float y, float w, float h,float r, float g, float b,float r1, float g1,float b1,int nums)
{
  if (nums==10)
  {
    nums=0;
  }
  
  int a=0;
  boolean mouseOver=false,kill=false;
  if (mouseX>x && mouseY>y && mouseX<x+w && mouseY<y+h && lastPress!=nums && ePress==false)
  {
    
    mouseOver=true;
    r=50;
    b=255;
    g=0;
  }
  if (ePress==true && mouseX>x && mouseY>y && mouseX<x+w && mouseY<y+h)
  {
    r=200;
    b=0;
    g=0;
    r1=0;
    b1=0;
    g1=0;
    
  }
  if (ePress==true)
  {
    kill=true; 
    r=200;
    b=0;
    g=0;
    r1=0;
    b1=0;
    g1=0;
  }
  if (mouseOver==true && mousePressed==true && lastPress!=nums && ePress==false)
  {
    spress=false;
    r=200;
    b=200;
    g=255;
    if (dec<0)
    {
      tota+=nums;
      total+=-1*nums/dec;
      dec*=10;
    }
    else
    {
      tota+=nums;
      total*=10;
      total+=nums;
    }
    opPress=false;
    lastPress=nums;
    
    
  }
  float rdec=(r1-r)/h,gdec=(g1-g)/h,bdec=(b1-b)/h;
  while (a<h)
  {
    stroke(r,g,b);
    if (a<=5)
    {
      float m=5-a;
      line(x+m,y+a,x+w-m,y+a);
      fill(0);
      stroke(0);
      point(x+m,y+a);
      point(x+w-m,y+a);
    }
    else if (a>=h-5)
    {
      float m=h-5-a;
      line(x-m,y+a,x+w+m,y+a);
      fill(0);
      stroke(0);
      point(x-m,y+a);
      point(x+w+m,y+a);
    }
    else
    {
      line(x,y+a,x+w,y+a);
      fill(0);
      stroke(0);
      point(x,y+a);
      point(x+w,y+a);
    }
    line(x+5,y,x+w-5,y);
    
    r+=rdec;
    g+=gdec;
    b+=bdec;
    a++;
  }
  if (mouseOver==false)
  {
    fill(0);
  }
  else
  {
    fill(255);
  }
  textAlign(CENTER);
  text(nums,x+w/2,y+h/2+5);
  if (kill==true)
  {
    strokeWeight(5);
    stroke(255);
    line(x+5,y+5,x+w-5,y+h-5);
    line(x+5,y+h-5,x+w-5,y+5);
    strokeWeight(1);
  }
}

//////////////////operators//////////////////////////////
void draw_operator(float x, float y, float w, float h,float r, float g, float b,float r1, float g1,float b1,String op)
{
  
  int a=0;
  boolean mouseOver=false;
  if (mouseX>x && mouseY>y && mouseX<x+w && mouseY<y+h && opPress==false)
  {
    mouseOver=true;
    r=180;
    b=255;
    g=0;
  }
  if (opPress==true && mouseX>x && mouseY>y && mouseX<x+w && mouseY<y+h)
  {
    
    r=255;
    b=0;
    g=0;
    r1=200;
    b1=0;
    g1=0;
  }
  if (mouseOver==true && mousePressed==true && opPress==false)
  {
    if (tan==true)
    {
      tota+=")";
      tan=false;
    }
    dec=0;
    spress=false;
    r=200;
    b=200;
    g=255;
    tota+=op;
    ePress=false;
    opPress=true;
    nums[int(num)]=total;
    total=0;
    num++;
    operator[int(operators)]=op;
    operators++;
  }
  float rdec=(r1-r)/h,gdec=(g1-g)/h,bdec=(b1-b)/h;
  while (a<h)
  {
    stroke(r,g,b);
    if (a<=5)
    {
      float m=5-a;
      line(x+m,y+a,x+w-m,y+a);
      fill(0);
      stroke(0);
      point(x+m,y+a);
      point(x+w-m,y+a);
    }
    else if (a>=h-5)
    {
      float m=h-5-a;
      line(x-m,y+a,x+w+m,y+a);
      fill(0);
      stroke(0);
      point(x-m,y+a);
      point(x+w+m,y+a);
    }
    else
    {
      line(x,y+a,x+w,y+a);
      fill(0);
      stroke(0);
      point(x,y+a);
      point(x+w,y+a);
    }
    line(x+5,y,x+w-5,y);
    
    r+=rdec;
    g+=gdec;
    b+=bdec;
    a++;
  }
  if (mouseOver==false)
  {
    fill(0);
  }
  else
  {
    fill(255);
  }
  textAlign(CENTER);
  text(op,x+w/2,y+h/2+5);
}
////////////////////// equals /////////////////////////////
void button(float x, float y, float w, float h,float r, float g, float b,float r1, float g1,float b1,String op)
{
  
  int a=0;
  boolean mouseOver=false;
  if (mouseX>x && mouseY>y && mouseX<x+w && mouseY<y+h)
  {
    mouseOver=true;
    r=180;
    b=255;
    g=0;
  }
  if (mouseOver==true && mousePressed==true && ePress==false)
  {
    spress=false;
    nums[int(num)]=total;
    total=0;
    num++;
    operator[int(operators)]=op;
    operators++;
    ePress=true;
    calc();
    totally=total;
    int v=0;
    while(a<operators)
    {
      nums[v]=0;
      operator[v]="";
      
      a++;
    }
    tota=str(totally);
    operators=0;
    totally=nums[0];
    num=0;
  }
  float rdec=(r1-r)/h,gdec=(g1-g)/h,bdec=(b1-b)/h;
  while (a<h)
  {
    stroke(r,g,b);
    if (a<=5)
    {
      float m=5-a;
      line(x+m,y+a,x+w-m,y+a);
      fill(0);
      stroke(0);
      point(x+m,y+a);
      point(x+w-m,y+a);
    }
    else if (a>=h-5)
    {
      float m=h-5-a;
      line(x-m,y+a,x+w+m,y+a);
      fill(0);
      stroke(0);
      point(x-m,y+a);
      point(x+w+m,y+a);
    }
    else
    {
      line(x,y+a,x+w,y+a);
      fill(0);
      stroke(0);
      point(x,y+a);
      point(x+w,y+a);
    }
    line(x+5,y,x+w-5,y);
    
    r+=rdec;
    g+=gdec;
    b+=bdec;
    a++;
  }
  if (mouseOver==false)
  {
    fill(0);
  }
  else
  {
    fill(255);
  }
  textAlign(CENTER);
  text(op,x+w/2,y+h/2+5);
}

void boring_button(float x, float y, float w, float h,float r, float g, float b,float r1, float g1,float b1,String op)
{
  
  int a=0;
  boolean mouseOver=false;
  if (mouseX>x && mouseY>y && mouseX<x+w && mouseY<y+h)
  {
    mouseOver=true;
    r=180;
    b=255;
    g=0;
  }
  if (mouseOver==true && mousePressed==true && ePress==false)
  {
    
  }
  float rdec=(r1-r)/h,gdec=(g1-g)/h,bdec=(b1-b)/h;
  while (a<h)
  {
    stroke(r,g,b);
    if (a<=5)
    {
      float m=5-a;
      line(x+m,y+a,x+w-m,y+a);
      fill(0);
      stroke(0);
      point(x+m,y+a);
      point(x+w-m,y+a);
    }
    else if (a>=h-5)
    {
      float m=h-5-a;
      line(x-m,y+a,x+w+m,y+a);
      fill(0);
      stroke(0);
      point(x-m,y+a);
      point(x+w+m,y+a);
    }
    else
    {
      line(x,y+a,x+w,y+a);
      fill(0);
      stroke(0);
      point(x,y+a);
      point(x+w,y+a);
    }
    line(x+5,y,x+w-5,y);
    
    r+=rdec;
    g+=gdec;
    b+=bdec;
    a++;
  }
  if (mouseOver==false)
  {
    fill(0);
  }
  else
  {
    fill(255);
  }
  textAlign(CENTER);
  text(op,x+w/2,y+h/2+5);
}


void make_buttons(int num,float x,float y,float w,float h,int base)
{
  float a=0;
  
  while(a<num)
  {
    draw_button(x,y,w,h,0,255,255,10,10,10,int(a)+base);
    x+=w;
    a++;
  }
}
////////////////////////////////////////////////////////
//////////////////////////////////////////////////////
void mouseReleased()
{
  c=0;
  lastPress=-1;
  spress=false;
  negative=false;
  decimal=false;
}

void disp()
{
  draw_button2(20,50,width-40,100,10,10,10,255,20,20,total);
  draw_button3(20,10,width-40,30,10,150,200,10,255,100,tota);

}


/////////////////////////////////////////////////////


void calc()
{
 int a=0;
 total=0;
 sins=0;
 while(a<num)
 {
   if (num==1)
   {
     total=nums[a];
   }
   if (a==0)
   {
      
      
     if (operator[a]=="*")
     {
       total+=nums[a]*nums[a+1];
     }
     if (operator[a]=="/")
     {
       total+=nums[a]/nums[a+1];
     }
     if (operator[a]=="+")
     {
     total+=nums[a]+nums[a+1];
     }
     if (operator[a]=="-")
     {
     total+=nums[a]-nums[a+1];
     }
   }
   else
   {
     if (operator[a]=="*")
   {
     total*=nums[a+1];
   }
   if (operator[a]=="/")
   {
     total/=nums[a+1];
   }
   if (operator[a]=="+")
   {
    total+=nums[a+1];
   }
   if (operator[a]=="-")
   {
    total-=nums[a+1];
   }
   }
   a++;
   totally=total;
 }
  
}




/////////////////////////////////////////////////////

boolean over(float x,float y, float w, float h)
{
  boolean bool;
  if (mouseX>x && mouseY>y && mouseX<x+w && mouseY<y+h)
  {
    bool=true;
  }
  else
  {
    bool=false;
  }
  return bool;
}
void decimal(float x, float y, float w, float h,float r, float g, float b,float r1, float g1,float b1,String op)
{
 boring_button(x,y,w,h,r,g,b,r1,g1,b1,op);
 if (dec!=0)
 {
   r=200;
   g=0;
   b=0;
   r1=50;
   g1=0;
   b1=0;
   boring_button(x,y,w,h,r,g,b,r1,g1,b1,op);
   strokeWeight(5);
    stroke(255);
    line(x+5,y+5,x+w-5,y+h-5);
    line(x+5,y+h-5,x+w-5,y+5);
    strokeWeight(1);
 }
 if(over(x,y,w,h)==true && mousePressed==true && decimal==false && dec==0)
 {
   dec-=10;
   tota+=op;
   decimal=true;
 }
 
}



void cleary(float x, float y, float w, float h,float r, float g, float b,float r1, float g1,float b1,String op)
{
  button(x,y,w,h,r,g,b,r1,g1,b1,op);
  
  if(over(x,y,w,h)==true && mousePressed==true)
  {
    spress=false;
    ePress=false;
    dec=0;
    tota="";
    total=0;
    int a=0;
    while(a<99)
    {
      sin[a]="";
      a++;
    }
    
  }
}

void neg(float x, float y, float w, float h,float r, float g, float b,float r1, float g1,float b1,String op)
{
  boring_button(x,y,w,h,r,g,b,r1,g1,b1,op);
  
  if(over(x,y,w,h)==true && mousePressed==true && negative==false)
  {
    tota+="(*-1)";
    total*=-1;
    negative=true;
  }
}

void ang_rad(float x, float y, float w, float h,float r, float g, float b,float r1, float g1,float b1,String op,int j)
{
  if (mode=="ang" && j==0)
    {
      g=255;
      b=255;
    }
  else if (mode=="rad" && j==1)
    {
      g=255;
      b=255;
    }
  if(over(x,y,w,h)==true && mousePressed==true)
  {
    opPress=false;
    if (j==0)
    {
      mode="ang";
    }
    else if (j==1)
    {
      mode="rad";
    }
    
  }  
  boring_button(x,y,w,h,r,g,b,r1,g1,b1,op);

}

void draw_sin(float x, float y, float w, float h,float r, float g, float b,float r1, float g1,float b1,String op)
{
  
  if(over(x,y,w,h)==true && mousePressed==true && spress==false)
  {
    tan=true;
    spress=true;
    tota+=op + "(";
    sin[int(sins)]=op;
    sins++;
    sin_vals[int(sins)] = num;
  }
  if (over(x,y,w,h) && spress==true)
  {
    r=255;
    g=0;
    b=0;
    r1=200;
    g1=0;
    b1=0;
  }
  boring_button(x,y,w,h,r,g,b,r1,g1,b1,op);
}
void squart(float x, float y, float w, float h,float r, float g, float b,float r1, float g1,float b1,String op)
{
  if(over(x,y,w,h)==true && mousePressed==true && spress==false && num<1)
  {
    tan=true;
    spress=true;
    total=sqrt(total);
    tota=str(total);
  }
  boring_button(x,y,w,h,r,g,b,r1,g1,b1,op);
  if (spress==true || num>0)
  {
    
    r=200;
    g=0;
    b=0;
    r1=50;
    g1=0;
    b1=0;
    boring_button(x,y,w,h,r,g,b,r1,g1,b1,op);
    strokeWeight(5);
    stroke(255);
    line(x+5,y+5,x+w-5,y+h-5);
    line(x+5,y+h-5,x+w-5,y+5);
    strokeWeight(1);
  }
  
}
void cosin(float x, float y, float w, float h,float r, float g, float b,float r1, float g1,float b1,String op)
{
  if(over(x,y,w,h)==true && mousePressed==true && spress==false && num<1)
  {
    tan=true;
    spress=true;
    total=sin(total*PI/180);
    tota=str(total);
  }
  boring_button(x,y,w,h,r,g,b,r1,g1,b1,op);
  if (spress==true || num>0)
  {
    
    r=200;
    g=0;
    b=0;
    r1=50;
    g1=0;
    b1=0;
    boring_button(x,y,w,h,r,g,b,r1,g1,b1,op);
    strokeWeight(5);
    stroke(255);
    line(x+5,y+5,x+w-5,y+h-5);
    line(x+5,y+h-5,x+w-5,y+5);
    strokeWeight(1);
  }
  
}
void sine(float x, float y, float w, float h,float r, float g, float b,float r1, float g1,float b1,String op)
{
  if(over(x,y,w,h)==true && mousePressed==true && spress==false && num<1)
  {
    tan=true;
    spress=true;
    total=cos(total*PI/180);
    tota=str(total);
  }
  boring_button(x,y,w,h,r,g,b,r1,g1,b1,op);
  if (spress==true || num>0)
  {
    
    r=200;
    g=0;
    b=0;
    r1=50;
    g1=0;
    b1=0;
    boring_button(x,y,w,h,r,g,b,r1,g1,b1,op);
    strokeWeight(5);
    stroke(255);
    line(x+5,y+5,x+w-5,y+h-5);
    line(x+5,y+h-5,x+w-5,y+5);
    strokeWeight(1);
  }
  
}
void tangent(float x, float y, float w, float h,float r, float g, float b,float r1, float g1,float b1,String op)
{
  if(over(x,y,w,h)==true && mousePressed==true && spress==false && num<1)
  {
    tan=true;
    spress=true;
    total=tan(total*PI/180);
    tota=str(total);
  }
  boring_button(x,y,w,h,r,g,b,r1,g1,b1,op);
  if (spress==true || num>0)
  {
    
    r=200;
    g=0;
    b=0;
    r1=50;
    g1=0;
    b1=0;
    boring_button(x,y,w,h,r,g,b,r1,g1,b1,op);
    strokeWeight(5);
    stroke(255);
    line(x+5,y+5,x+w-5,y+h-5);
    line(x+5,y+h-5,x+w-5,y+5);
    strokeWeight(1);
  }
  
}


void setup()
{
  size(600,600);
}

void rects(float x, float y)
{
  noStroke();
  float w_inc=width/x,h_inc=height/y;
  for (int w=0; w<width; w+=w_inc) {
    for (int h=0; h< height; h+=h_inc) {
      fill(random(255));
      rect(w, h, w_inc, h_inc);
    }
  }
  noLoop();
}

void draw()
{
 rects(600,600); 
}


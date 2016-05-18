Car [] cars = new Car[100];
void setup() {
  size(640,480);
  int g=0;
  while(g<cars.length)
  {
    cars[g]= new Car(random(width),g*6,random(-10,10),random(30,100),color (random(255),random(255),random(255)));
    g++;
  }
}

void draw() {
  background(70,0,180);
  int g=0;
 
   while(g<cars.length)
  {
    cars[g].display();
    cars[g].move();
    g++;
  }
}
///grade
float grade;
String grad;
void setup()
{
  size(640, 480);
}

void do_rand(float grade)
{
  strokeWeight(3);
  stroke(100,100,130);
  line(0,100,width,100);
  strokeWeight(5);
  stroke(255,200,200);
  point(mouseX,100);
  fill(200, 200, 255);
  //noLoop();
  frameRate(100);
  if (grade>=100) 
  {
    println ("You Hacked Life", grade);
    grad = "?";
  } 
  else if (grade>=94) 
  {
    println ("Assign letter grade A. Grade =", grade);
    grad = "A";
  } 
  else if (grade>=89) 
  { 
    println ("Assign letter grade A-. Grade =", grade);
    grad = "A-";
  } 
  else if (grade>=87) 
  {
    println ("Assign letter grade B+. Grade =", grade);
    grad = "B+";
  } 
  else if (grade>=83) 
  {
    println ("Assign letter grade B. Grade =", grade);
    grad = "B";
  } 
  else if (grade>=80) 
  {
    println ("Assign letter grade B-. Grade =", grade);
    grad = "B-";
  } 
  else if (grade>=77) 
  {
    println ("Assign letter grade C+. Grade =", grade);
    grad = "C+";
  } 
  else if (grade>=73) 
  {
    println ("Assign letter grade C. Grade =", grade);
    grad = "C";
  } 
  else if (grade>=70) 
  {
    println ("Assign letter grade C-. Grade =", grade);
    grad = "C-";
  } 
  else if (grade>=67) 
  {
    println ("Assign letter grade D+. Grade =", grade);
    grad = "D+";
  } 
  else if (grade>=63) 
  {
    println ("Assign letter grade D. Grade =", grade);
    grad = "D";
  } 
  else if (grade>=60) 
  {
    println ("Assign letter grade D-. Grade =", grade);
    grad = "D-";
  } 
  else 
  {
    println ("Assign letter grade F-. Grade =", grade, "FAIL");
    grad = "F-";
  }

  textSize(300);
  text(grad, width/2-100, height/2+150);
  textSize(30);
  fill(200, 255, 200);
  text(grade, width/2-100, height/2+200);
}

void draw()
{
  background(0);
  do_rand((mouseX*100)/width);
}


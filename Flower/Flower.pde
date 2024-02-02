import Turtle.*;
Turtle t; 

float angle = 1; 

void setup()
{
  size(500,500);
  t = new Turtle(this); 
  noLoop();
}

void draw()
{
  t.drawTurtle();
  flower2(45,2);
  flower(10,45,1);
  t.penUp();
  t.back(-100); 
  t.left(90);
  t.forward(25);
  t.penDown();
  flower(11,67.5,2);
}

void circle(float r)
{
  for (int i = 0; i < 360; i++)
  {
    t.forward(r);
    t.right(r);
  }
}

void swirl(float r)
{
  for (int i = 0; i < 360; i++)
  {
    t.forward(4);
    angle -= r;
    t.right(angle);
  }
}

void flower(int iterations, float angle, float r)
{
  for(int i = 0; i < iterations; i++)
  {
    swirl(r); 
    t.left(angle);
  }
}

void flower2(float angle, float r)
{
  for(int i = 0; i < 10; i++)
  {
    circle(r); 
    t.left(angle);
  }
}

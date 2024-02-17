import Turtle.*; 
import processing.svg.*;
Turtle t; 

float xpos = random(100,400); 
float ypos = random(100,400);

void setup()
{
  size(600,600);
  strokeWeight(1);
  t = new Turtle(this); 
  noLoop();
  beginRecord(SVG, "CompFab_Cross.svg");
}

void draw()
{
  gridRepeat();  
  crossVector();
}

void cross()
{
  t.penDown();
  t.right(90);
  t.forward(200); 
  t.penUp(); 
  t.forward(-75); 
  t.left(90); 
  t.forward(50); 
  t.right(180);
  t.penDown(); 
  t.forward(100);
  t.penUp();
}

void grid()
{
  for (int i = 0; i < 500; i++)
  {
    t.penUp();
    t.forward(xpos);
    t.right(90);
    t.penDown();
    cross();
    t.penUp();
  }
}

void gridRepeat()
{
  t.drawTurtle();
  for (int i = 0; i < 4; i++)
  {
    grid();
    t.right(90);
  }
}

void crossVector()
{
  t.penUp();
  t.left(90); 
  t.forward(125);
  t.right(90);
  t.penDown();
  strokeWeight(6);
  stroke(0,0,255);
  t.forward(50);
  t.right(90); 
  t.forward(100); 
  t.left(90); 
  t.forward(125); 
  t.right(90); 
  t.forward(50); 
  t.right(90);
  t.forward(125);
  t.left(90); 
  t.forward(100); 
  t.right(90); 
  t.forward(50); 
  t.right(90);
  t.forward(100); 
  t.left(90); 
  t.forward(250); 
  t.right(90); 
  t.forward(50); 
  t.right(90); 
  t.forward(250); 
  t.left(90); 
  t.forward(100);
}

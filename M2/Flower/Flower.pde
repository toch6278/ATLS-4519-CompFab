import Turtle.*;
import processing.svg.*;
import processing.dxf.*; 

Turtle t; 
boolean record;

float angle = 1; 

void setup()
{
  size(500,500);
  t = new Turtle(this); 
  noLoop();
  beginRecord(SVG, "CompFab_Flower.svg");
  if (record)
  {
    beginRaw(DXF, "CompFab_Flower.dxf");
  }
  if (record)
  {
    endRaw();
  }
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
  outline();
}

void pedal(float r)
{
  float centerX = 0; 
  float centerY = 0; 
  
  //stroke(255,0,0);
  for (int i = 0; i < 360; i++)
  {
    t.forward(r);
    t.right(r);
    
    centerX = getPolarX(r, i); 
    centerY = getPolarY(r,i);
    //startX = getPolarX(
    
    //arc(centerX, centerY, r + 10);
  }
}

void swirl(float r)
{
  for (int i = 0; i < 360; i++)
  {
    t.forward(4);
    angle -= r;
    println(angle);
    t.right(angle);
    
    //if(angle < -50)
    //{
    //  i++;
    //  angle = 1;
    //}
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

float getPolarX(float radius, float theta)
{
  float x = radius * cos(radians(theta)); 
  return x; 
}

float getPolarY(float radius, float theta)
{
   float y = radius * sin(radians(theta));
   return y;
}

void flower2(float angle, float r)
{
  for(int i = 0; i < 10; i++)
  {
    pedal(r); 
    t.left(angle);
  }
}

void outline()
{
  stroke(255,0,0); 
  noFill();
  //arc(width/2 - 10,150,100,100, PI, TWO_PI);
  circle(width/2, height/2,250);
}

void keyPressed()
{
  if(key == 'r')
  {
    record = true;
  }
}

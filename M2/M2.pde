// Mini Assignment 2
import Turtle.*;
Turtle t; 
float k = 5; 

float iteration = random(6,10); 
float branchLength = random(40,80);
float angle = random(-45,45);
float angleDown = random(200,300);
int steps = 10; 
int thickness = 2; 

void setup()
{
  size(500,500);
  stroke(150,75,0);
  strokeWeight(thickness);
  t = new Turtle(this); 
  noLoop();
}

void draw()
{
  t.drawTurtle();
  //move turtle back 100 steps 
  t.penUp();
  t.back(100);
  t.penDown();
  branch(5,72,angle);
  
  //draw tree
  branch(6,80,angle);
  t.penUp();
  t.back(10); 
  t.penDown(); 
  branch(4,75,angle);
  t.penUp();
  
  //draw roots
  base();
  t.drawTurtle();
  //t.back(10);
  t.penDown();
  roots(6,80,angleDown);
  t.penUp();
  base();
  t.drawTurtle();
  //t.forward(50);
  t.penDown();
  //t.right(35);
  //roots(random(6,10),20,angleDown);
  base();
  roots(random(6,15),10,angleDown);
  base();
  roots(random(6,15),10,angleDown);
  base();
  roots(random(6,15),10,angleDown);
  //t.right(-50);
  //roots(6,180,angleDown);
}

void base()
{
  t.setX(250); 
  t.setY(350);
}

//a recursive tree-drawing procedure
void branch(float iteration, float branchLength, float angle)
{
  if (iteration == 0)
    return;
  //for(int i = 0; i < 50; i++)
  //{
    t.forward(branchLength);
    t.left(angle);
    branch(iteration-0.5, branchLength/1.5, angle);
    t.right(angle);
    t.right(angle);
    branch(iteration-0.5, branchLength/1.5, angle);
    t.left(angle);
    t.back(branchLength);

    //thickness -= 0.75;
    //strokeWeight(thickness);
    //print("Hello WOrld")
  //}
}

void roots(float iteration, float rootLength, float angle)
{
  t.forward(50);
  for(int i = 0; i < iteration; i++)
  {
    // drawing the direction in which the turtle is turning
    //t.drawTurtle();
    t.forward(steps); 
    println("moving backward");
    if (i % 2 == 0 )
    {
      t.right(angleDown);
    }
    if (i % 3 == 0)
    {
      t.left(angleDown);
    }
  }
  
}

// draw flowers
void flowers()
{
  float theta = frameCount / 90.0; 
  float x = cos(k * theta) * sin(theta); 
  float y = cos(k * theta) * cos(theta);
  stroke(245, 177, 200);
  line(width/2, height/2, x, y); 
}

void heart()
{
}

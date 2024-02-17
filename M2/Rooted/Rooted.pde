import Turtle.*;
import processing.svg.*;
Turtle t; 

float angle = random(-45,45);
float turn = random(-10,-90);
float grow = random(20,100);

int oddNum[] = {1,3,5};

float x = 250; 
float y = 350;

void setup()
{
  size(600,600);
  stroke(150,75,0);
  strokeWeight(0.8);
  t = new Turtle(this); 
  noLoop();
  beginRecord(SVG, "CompFab_Rooted.svg");
}

void draw()
{
  base(x, height/2 - 25);
  //t.drawTurtle();
  
  tree();
  
  line(0,y-10,width,y-10);
  t.right(180);
  rootSegment();
  
  
  grow = random(20,100);
  t.right(90);
  base(x,y);
  //t.drawTurtle();
  rootSegment();
  
  grow = random(20,100);
  t.right(20);
  base(x,y);
  //t.drawTurtle();
    
}

//a recursive tree-drawing procedure from Turtle example
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

void tree()
{
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
}

void base(float x, float y)
{
  t.setX(x); 
  t.setY(y);
}

void rootSegment()
{for(int i = 0; i < 6; i++)
  {
    if (i % 2 == 0)
    {
      base(x,y);
      t.drawTurtle();
      t.penDown(); 
      t.right(turn);
      t.forward(grow);
      float branchX = t.getX(); 
      float branchY = t.getY();
      println(branchX, branchY);
      t.left(random(-45,-120));
      t.forward(random(5,20));
      base(branchX, branchY);
      t.right(turn - 50);
      t.forward(grow);
    }
    base(x,y);
    t.drawTurtle();
    t.penDown();
    
    t.right(turn);
    turn += 2; 
    t.forward(grow);
    grow += 20; 
    //t.right(random(-45,45));
    float branchX = t.getX() + 10; 
    float branchY = t.getY();
    //t.left(turn);
    //t.forward(grow);
    t.penUp();
    
    //t.drawTurtle();
    
    for (int j = 0; j < oddNum.length; j++)
    {
      if(i == j)
      {
        strokeWeight(1.2);
        t.left(52); 
        t.penDown();
        t.forward(60);
        t.right(52);
        t.forward(random(20,50));
        t.penUp();
        t.back(20);
        //t.drawTurtle();
        strokeWeight(0.8);
      }
    }
    
  }
}

// Source: https://www.javatpoint.com/heart-pattern-in-java
void heart()
{
  int size = 4; 
  for (int i = 0; i < size; i++)
  {
    for (int j = 0; j <= 4 * size; j++)
    {
      double pos1 = Math.sqrt(Math.pow(i-size, 2) + Math.pow(j-size,2));
      double pos2 = Math.sqrt(Math.pow(i-size, 2) + Math.pow(j-3 * size, 2)); 
      
      if (pos1 < size + 0.5 || pos2 < size + 0.5)
      {
        println('*'); 
      }
      else
      {
        println(' '); 
      }
    }
    System.out.print(System.lineSeparator());
  }
}

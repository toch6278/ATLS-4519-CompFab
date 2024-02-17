// L1 - Task 1 
import processing.svg.*;
import Turtle.*;
Turtle t; 

void setup(){
  size(600,600);
  strokeWeight(2);
  t = new Turtle(this); 
  noLoop();
}

void draw() {
  
  // drawing "I" and "T"
  //t.drawTurtle();
  t.push();
  IT(); 
  t.pop();
  t.push();
  
  // draw triangle
  t.penUp();
  t.back(100);
  t.push();
  t.left(90); 
  t.forward(150);
  t.left(60);
  triangle();
  
  // draw pentagon
  t.penUp(); 
  t.right(90);
  t.forward(25);
  pentagon(); 
  
  // draw circle
  t.penUp(); 
  t.forward(100);
  circle();
  t.pop();
  //t.drawTurtle();
}

// drawing "I" and "T"

void IT() {
  t.penUp(); 
  t.forward(250); 
  t.push();
  t.left(90);
  t.forward(150);
  t.right(180);
  t.penDown(); 
  t.forward(100); 
  t.right(90);
  t.forward(25); 
  t.right(90); 
  t.forward(25);
  t.left(90); 
  t.forward(100); 
  t.left(90); 
  t.forward(25); 
  t.right(90);
  t.forward(25); 
  t.right(90); 
  t.forward(100);
  t.right(90); 
  t.forward(25);
  t.right(90);
  t.forward(25);
  t.left(90);
  t.forward(100);
  t.left(90); 
  t.forward(25); 
  t.right(90); 
  t.forward(25);
  t.pop();
  //t.drawTurtle();
  
  t.penDown();
  t.right(90); 
  t.forward(99); 
  t.right(90); 
  t.forward(25); 
  t.right(90); 
  t.forward(33); 
  t.left(90); 
  t.forward(125);
  t.right(90); 
  t.forward(33); 
  t.right(90); 
  t.forward(125); 
  t.left(90); 
  t.forward(33); 
  t.right(90); 
  t.forward(25);
  t.penUp();
}

void triangle() {
  t.penDown();
  for(int i = 0; i < 3; i++)
  {
    // angle: 360/3 = 120
    t.forward(100); 
    t.left(120);
    
    // triangle pattern
    //t.forward(100); 
    //t.left(120); 
    //t.forward(100);
  }
  t.penUp();
  t.pop();
  //t.drawTurtle();
}

void pentagon() {
  t.penDown();
  for(int i = 0; i < 5; i++)
  {
    // angle: 360/5 = 72
    t.right(72); 
    t.forward(75); 
  }
  //t.right(60); 
  //t.forward(60);
  //t.right(60); 
  //t.forward(60); 
  //t.right(60); 
  
  t.penUp();
  //t.drawTurtle();
}
  
void circle() {
  t.penDown(); 
  for(int i = 0; i < 360; i++) {
    t.forward(1); 
    t.right(1); 
  }
  t.penUp();
}

// ExampleLSystemDesigns - contains initialization methods
// to set up parameters and init the LSystem (from the main file)

import java.util.HashMap;

// [TODO]: create your own L-System initialization methods
// and use/test in the setup() method of L1LSystemAssignment file. 
// See example for Square Lsystem below.

LSystem triangle() {
  // initialize turtle variables
  float moveDist = 40;
  float rotateAngle = 90;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "F+<+F+F-<";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "F+[-F-FF+F+F-F");
  rules.put('<', "F+]");
  rules.put('+', "[<");
  rules.put('-', "F-");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}  

LSystem diamond() {
  // initialize turtle variables
  float moveDist = 50;
  float rotateAngle = 180;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "F[+FF+F*";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "FF-");
  rules.put('+', "-");
  rules.put('[', "F*");
  rules.put('*', "]");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

// Code from The Algorithmic Beauty of Plants by Przemyslaw Prusinkiewicz and Aristid Lindenmayer
// pg. 12
LSystem ninjastar() {
  // initialize turtle variables
  float moveDist = 20;
  float rotateAngle = 60;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "F+F+F+F+F+F";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "X^F+B++B-F-B");
  rules.put('B', "X^F+BB+-F--B");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

// Code from The Algorithmic Beauty of Plants by Przemyslaw Prusinkiewicz and Aristid Lindenmayer
// pg. 25
LSystem branch() {
  // initialize turtle variables
  float moveDist = 20;
  float rotateAngle = 60;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "X";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  //rules.put('X', "F[+X][-X]FX");
  rules.put('X', "F[F-[[+X]+B]+F[+FX]][+X]-X");
  rules.put('F', "FF");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

// Square Lsystem initialization 
// This method returns an Lsystem object that uses
// The rules and axioms for a square based system
LSystem initSquare() {
  // initialize turtle variables
  float moveDist = 10;
  float rotateAngle = 90;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "F+F+F+F";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "F+F-F-FF+F+F-F");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}  

# ECE Stuff
Documentation for ECE stuff

## [ECE 111] Tekbot
Basic bump bot that does stuff when the bumpers are hit.

### Wiring Diagram
- HC-05 for bluetooth communication
- Arduino nano as microcontroller
- L239DNE as motor controller
![wiring diagram](https://github.com/Shogatsu/ECE-Stuff/blob/master/WiringDiagram/finalDiagram.PNG)

### Code
Main part of the code
````
void loop() { 
  B_LEFT2 = digitalRead(B_LEFT);
  B_RIGHT2 = digitalRead(B_RIGHT);
   //Assuming both bumpers are connected to ground
  if (B_RIGHT2 == 0 && B_LEFT2 == 0) { 
    //Method called from bothBump function
    Serial.println("BOTH BUMPERS ARE BEING CALLED");
    bothBump();
  } else if (B_RIGHT2 == 0) {
    //Method called from rightBump function
    Serial.println("B_RIGHT2 is being called");
    rightBump();
  } else if (B_LEFT2 == 0) {
    //Method called from leftBump function
    Serial.println("B_LEFT2 is being called");
    leftBump();
  } else {
    //If none of these are pressed, just move forward
    moveForward();
    Serial.println("Nothing being pressed");
  }
}
````

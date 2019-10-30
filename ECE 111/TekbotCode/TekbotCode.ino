/*
 * Name: Tekbot Code
 * Author: Matthew T
 * Group 1: Andrew, Matthew and Lucy
 * Date: 10/28/19
 */
#define R1_MOTOR 2 //MOTOR 1 D2
#define R2_MOTOR 3 //MOTOR 1 D4
#define L1_MOTOR 4 //MOTOR 2 D5
#define L2_MOTOR 5 //MOTOR 2 D6
#define B_RIGHT 7 //Right bumper D7
#define B_LEFT 6 //Left bumper D8
#define KILLSWITCH 8 //Killswitch D9
#define PWM_M1 3 //PWM for motor 1
#define PWM_M2 3 //PWM for motor 2
#define PWM_SPEED 130 //Speed
/*
 * Note:
 * 2 PWM pins are still needed so use breadboard
 * Reserve D3 for PWM!
 */

//Declare global variables
int B_RIGHT2 = 0;
int B_LEFT2 = 0;

void setup() {
  //Right motor
  pinMode(R1_MOTOR,OUTPUT);
  pinMode(R2_MOTOR,OUTPUT);
  //Left motor
  pinMode(L1_MOTOR,OUTPUT);
  pinMode(L2_MOTOR,OUTPUT);
  //Right and left bumpers    
  //Pull              
  pinMode(B_RIGHT,INPUT_PULLUP);
  pinMode(B_LEFT,INPUT_PULLUP);
}

void loop() { 
  /*
   * B_LEFT2 & B_RIGHT2 are global variables declared above
   * and they need to be set to the values taken in by the 
   * analog pins "B_RIGHT" and "B_LEFT". We need B_RIGHT2 &
   * B_LEFT2 to be integers so we can compare them in an if 
   * statement.
   */
  B_LEFT2 = digitalRead(B_LEFT);
  B_RIGHT2 = digitalRead(B_RIGHT);

  /*
   * We're comparing if B_RIGHT2 and B_LEFT2 are 0 to see if they 
   * are both being pressed. If they're both being pressed, run 
   * the bothBump(); function or if not, check to see if B_RIGHT2 is
   * equal to zero and if B_LEFT is equal to zero.
   */
   //Assuming both bumpers are connected to ground
  if (B_RIGHT2 == 0 && B_LEFT2 == 0) { 
    bothBump();
  } else if (B_RIGHT2 == 0) {
    rightBump();
  } else if (B_LEFT2 == 0) {
    leftBump();
  } else {
    moveForward(250);
  }
}

/*
 * NOTE
 * The tekbot's "turn" is determined by the delay value
 * you input into the function.
 * 
 * Next objective:
 * Find what "180 degrees" is in a turn in MS
 */
void leftBump() {
  //Tekbok will back up, turn right and continue forward
  //Back up
  backUp(100);
  //Turn right
  digitalWrite(R1_MOTOR,LOW);
  digitalWrite(R2_MOTOR,LOW);
  digitalWrite(L1_MOTOR,HIGH);
  digitalWrite(L2_MOTOR,LOW);
  delay(100);

  //Go forward
  moveForward(250);
}

void rightBump() {
  //Tekbot will backup, turn left and continue forward
  //Back up
   backUp(100);
  delay(100);
  //Turn left
  digitalWrite(R1_MOTOR,HIGH);
  digitalWrite(R2_MOTOR,HIGH);
  digitalWrite(L1_MOTOR,HIGH);
  digitalWrite(L2_MOTOR,LOW);
  delay(100);

  //Go forward
  moveForward(250);
}

void bothBump() {
  //Tekbot will backup, turn 180 and continue forward
  
  //Backup
  backUp(100);
  //Turn 180
  digitalWrite(R1_MOTOR,HIGH);
  digitalWrite(R2_MOTOR,LOW);
  digitalWrite(L1_MOTOR,LOW);
  digitalWrite(L2_MOTOR,LOW);
  delay(500);
  //Move forward
  moveForward(250);
}


//Functions called in the bump functions
void backUp(int delayTime) {
  digitalWrite(R1_MOTOR,LOW);
  digitalWrite(R2_MOTOR,HIGH);
  digitalWrite(L1_MOTOR,LOW);
  digitalWrite(L2_MOTOR,HIGH);
  delay(delayTime);
}

void moveForward(int delayTime) {
  digitalWrite(R1_MOTOR,HIGH);
  digitalWrite(R2_MOTOR,LOW);
  digitalWrite(L1_MOTOR,HIGH);
  digitalWrite(L2_MOTOR,LOW);
  delay(delayTime);
}

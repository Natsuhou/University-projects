#include <SoftwareSerial.h> //Use software serial for bluetooth
#define R1_MOTOR 7 //MOTOR 1 D7
#define R2_MOTOR 6 //MOTOR 1 D6
#define L1_MOTOR 9 //MOTOR 2 D9
#define L2_MOTOR 8 //MOTOR 2 D8
#define PWM_L 5 //PWM for motor 1
#define PWM_R 3 //PWM for motor 2
#define PWM_SPEED 1606 //PWM speed

/*
 * How to: 
 * Download "putty" from putty.org
 * Choose connection type "serial"
 * Change COM1 to COM5 and have baud rate set to 9600
 * 
 * Password for HC-05: 1234
 * Controls:
 * W = Forward
 * A = Left 
 * S = Backwards
 * D = Right
 * 
 * Note: 
 * Once a button is pressed the bot will infinitely loop that one command until another button is pressed.
 * Essentially, the "delay" or degree of rotation is variable (set by the user rather than hard coded as an int)
 * 
 * ie: if you only press w it will infinitely loop the forward command until you press another command
 */

//Use a software serial to define RX/TX pins
SoftwareSerial Blue(0, 1); //RX | TX

void setup() {
  //Setting the pinmode for the right motors
  pinMode(R1_MOTOR,OUTPUT);
  pinMode(R2_MOTOR,OUTPUT);
  //Setting the pinmode for the left motors
  pinMode(L1_MOTOR,OUTPUT);
  pinMode(L2_MOTOR,OUTPUT);
  //Setting the speed for the PWM
  pinMode(PWM_R,OUTPUT);
  pinMode(PWM_L,OUTPUT);
  //Setting the PWM speed for left and right motors
  digitalWrite(PWM_L,PWM_SPEED);
  digitalWrite(PWM_R,PWM_SPEED);
  //Begin serials at 9600 baud rate
  Blue.begin(9600);
  Serial.begin(9600);
}

//Bot will await next command from keyboard
void loop() { 
  //Take the input from putty as a char
  char in = Blue.read();
  //If the input is equal to 'w' on keyboard, go forward
  if (in == 'w') {
    moveForward();
    Serial.println("Move forward");
    Blue.println("Move forward called");
  //If the input is equal to 's' on keyboard, go backwards
  } else if (in == 's') {
    backUp();
    Serial.println("Move back");
    Blue.println("Move back");
  //If the input is equal to 'a' on keyboard, go left
  } else if (in == 'a') {
    turnLeft();
    Serial.println("Turn left");
    Blue.println("Turn left");
  //If the input is equal to 'd' on keyboard, go right
  } else if (in == 'd') {
    turnRight();
    Serial.println("Turn right");
    Blue.println("Turn right");
  //If the input is equal to 'z' on keyboard, don't do anything
  } else if (in == 'z') {
    noMove();
    Serial.println("Stop moving");
    Blue.println("Stop moving");
  }
}
/*
 * Turn left method
 */
void turnLeft() {
  //Turn right
  digitalWrite(R1_MOTOR,HIGH);
  digitalWrite(R2_MOTOR,LOW);
  digitalWrite(L1_MOTOR,LOW);
  digitalWrite(L2_MOTOR,LOW);
}
/*
 * Turn right method
 */
void turnRight() {
  //Turn left
  digitalWrite(R1_MOTOR,LOW);
  digitalWrite(R2_MOTOR,LOW);
  digitalWrite(L1_MOTOR,HIGH);
  digitalWrite(L2_MOTOR,LOW);
}
/*
 * Back up method
 */
void backUp() {
  digitalWrite(R1_MOTOR,LOW);
  digitalWrite(R2_MOTOR,HIGH);
  digitalWrite(L1_MOTOR,LOW);
  digitalWrite(L2_MOTOR,HIGH);
}
/*
 * Move forward method
 */
void moveForward() {
  digitalWrite(R1_MOTOR,HIGH);
  digitalWrite(R2_MOTOR,LOW);
  digitalWrite(L1_MOTOR,HIGH);
  digitalWrite(L2_MOTOR,LOW);
}
/*
 * Do nothing method
 */
void noMove() {
  digitalWrite(R1_MOTOR,LOW);
  digitalWrite(R2_MOTOR,LOW);
  digitalWrite(L1_MOTOR,LOW);
  digitalWrite(L2_MOTOR,LOW);
}

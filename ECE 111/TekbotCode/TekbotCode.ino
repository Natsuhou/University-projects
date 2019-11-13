/*
 * Name: Tekbot Code
 * Author: Matthew T
 * Group 1: Andrew, Matthew and Lucy
 * Date: 10/28/19
 */
#define R1_MOTOR 7//MOTOR 1 D2
#define R2_MOTOR 6 //MOTOR 1 D4
#define L1_MOTOR 8 //MOTOR 2 D5
#define L2_MOTOR 9 //MOTOR 2 D6
#define B_RIGHT 4 //Right bumper D4
#define B_LEFT 2 //Left bumper D2
#define PWM_L 5 //PWM for motor 1
#define PWM_R 3 //PWM for motor 2
#define PWM_SPEED 250 //Speed


//Use enable pins on DNE

//Variables used for left bumper right bumper
int B_RIGHT2 = 0;
int B_LEFT2 = 0;

void setup() {
  //Setting the pinmode for the right motors
  pinMode(R1_MOTOR,OUTPUT);
  pinMode(R2_MOTOR,OUTPUT);
  //Setting the pinmode for the left motors
  pinMode(L1_MOTOR,OUTPUT);
  pinMode(L2_MOTOR,OUTPUT);
  /*       
   * The pinmode for the right and the left bumper are set to INPUT_PULLUP
   * so we don't get environmental interference with our bumper
   */
  pinMode(B_RIGHT,INPUT_PULLUP);
  pinMode(B_LEFT,INPUT_PULLUP);

  pinMode(PWM_R,OUTPUT);
  pinMode(PWM_L,OUTPUT);

  digitalWrite(PWM_L,PWM_SPEED);
  digitalWrite(PWM_R,PWM_SPEED);
  Serial.begin(9600);
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

/*
 * NOTE
 * The tekbot's "turn" is determined by the delay value
 * you input into the function.
 * 
 * Next objective:
 * Find what "180 degrees" is in a turn in MS
 */
//Function Goal: Tekbok will back up, turn right and continue forward
void leftBump() {
  //Back up
  backUp();
  delay(1000);
  //Turn right
  digitalWrite(R1_MOTOR,HIGH);
  digitalWrite(R2_MOTOR,LOW);
  digitalWrite(L1_MOTOR,LOW);
  digitalWrite(L2_MOTOR,LOW);
  delay(1060);

  //Go forward
  moveForward();
}
//Function Goal: Tekbot will backup, turn left and continue forward
void rightBump() {
  //Back up
  backUp();
  delay(1000);
  //Turn left
  digitalWrite(R1_MOTOR,LOW);
  digitalWrite(R2_MOTOR,LOW);
  digitalWrite(L1_MOTOR,HIGH);
  digitalWrite(L2_MOTOR,LOW);
  delay(1100);

  //Go forward
  moveForward();
}
 //Function Goal: Tekbot will backup, turn 180 and continue forward
void bothBump() {
  //Backup
  backUp();
  delay(1000);
  //Turn 180
  digitalWrite(R1_MOTOR,HIGH);
  digitalWrite(R2_MOTOR,LOW);
  digitalWrite(L1_MOTOR,LOW);
  digitalWrite(L2_MOTOR,LOW);
  //1900 good 90
  delay(1930);
  //Move forward
  moveForward();
}
//Backup function used in other functions above
void backUp() {
  digitalWrite(R1_MOTOR,LOW);
  digitalWrite(R2_MOTOR,HIGH);
  digitalWrite(L1_MOTOR,LOW);
  digitalWrite(L2_MOTOR,HIGH);
}
//moveForward function used in other functions above
void moveForward() {
  digitalWrite(R1_MOTOR,HIGH);
  digitalWrite(R2_MOTOR,LOW);
  digitalWrite(L1_MOTOR,HIGH);
  digitalWrite(L2_MOTOR,LOW);
}

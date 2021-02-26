//catchy - a game where you catch objects

final float objectVelocity = 3;
float objectX = 300;
float objectY = 30;
float playerX = 300;

//variables to check if key is pressed
boolean leftArrow = false;
boolean rightArrow = false;
boolean spaceBar = false;

boolean dead = true; //show the dead screen, because it's going to be the start screen

void setup(){
  size(800,600);
}

void draw(){
  if(dead == true){
    background(0);
    textAlign(CENTER);
    fill(255);
    textSize(50);
    text("Press the space bar to play.", width/2, height/2);
    if(spaceBar){
      dead = false;
    }
  }
  if(dead == false){
    background(255);
    noStroke(); //remove border
    fill(255,0,0);//red
    ellipse(objectX,objectY,50,50);
    fill(0);//black
    rect(playerX,540,50,50);
    updatePlayerPosition();
    moveObject();
    if(gameOver()){ //checking if game is over
      //println("You lost");
      resetObject();
      dead = true;
    }
    if(objectIsTouchingPlayer()){
      resetObject();
    }
  }
}

//we update the player position if the keys are pressed with this function
void updatePlayerPosition(){
  if(leftArrow){
    playerX -= 10; //move left
  }
  if(rightArrow){
    playerX += 10; //move right
  }
}

void resetObject(){
  objectY = 30;
  objectX = random(100,700);
}

//we want to move the object down
void moveObject(){
  objectY += objectVelocity;
}

boolean gameOver(){
  if(objectY >= height){
    return true;
  }
  return false;
}

boolean objectIsTouchingPlayer(){
  if(objectX >= playerX && objectX <= playerX+50 && objectY >= 540 && objectY <= 590){
    return true;
  }
  return false;
}


//set variables to true when pressed
void keyPressed(){
  if(keyCode == LEFT){
    leftArrow = true;
  }
  if(keyCode == RIGHT){
    rightArrow = true;
  }
  if(key == ' '){
    spaceBar = true;
  }
}

//set variables to false when released
void keyReleased(){
  if(keyCode == LEFT){
    leftArrow = false;
  }
  if(keyCode == RIGHT){
    rightArrow = false;
  }
  if(key == ' '){
    spaceBar = false;
  }
}

// hey guys, today we're going to make a demo where a ball bounces around a screen

float ballX = 400;
float ballY = 300;
final float ballWidth = 100;
final float ballHeight = 100;
float ballXVelocity = 5;
float ballYVelocity = 5;


void setup(){
  size(800,600);
}

void draw(){
  background(255);
  ellipse(ballX,ballY,ballWidth,ballHeight);
  moveBall();
  bounceBall();
}

void moveBall(){
  ballX += ballXVelocity;
  ballY += ballYVelocity;
}

void bounceBall(){
  if(ballX+ballWidth/2 >= width || ballX-ballWidth/2 <= 0){
    ballXVelocity *= -1 + random(-0.05,0.05); //add a little be of randomness
  }
  if(ballY+ballHeight/2 >= height || ballY-ballHeight/2 <= 0){
    ballYVelocity *= -1 + random(-0.05,0.05); //add a little be of randomness
  }
}

// Thanks for watching!

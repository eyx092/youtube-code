boolean background = true;

//true is black background
//false is white background

void setup(){
  size(600,600);
}

void draw(){
  updateBackground();
  rect(width/2,height/2,100,50);
}

void updateBackground(){
  if(background){
    background(0);
  }
  else{
    background(255);
  }
}

boolean isMouseOver(int x, int y, int w, int h){
  if(mouseX >= x && mouseX <= x + w && mouseY >= y && mouseY <= y + h){
    return  true;
  }
  return false;
}

void mousePressed(){
  if(isMouseOver(width/2,height/2,100,50) == true){
    println("Mouse pressed button");
    background = !background;
  }
}

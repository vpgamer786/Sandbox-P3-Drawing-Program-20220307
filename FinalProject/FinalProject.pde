//Glbal Variable//
//
void setup() {
  size(800, 650);
  background(255);
}

void draw(){
  if(mousePressed){
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
}

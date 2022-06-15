//Glbal Variable//
float r = 0;
float g = 0;
float b = 0;

float bR;
float bG;
float bB;

int penSize = 2;
//
void setup() {
  bR = random(255);
  bG = random(255);
  bB = random(255);
  fullScreen();
  background(bR,bG,bB);
}

void draw(){
  stroke(r,g,b);
  strokeWeight(penSize);
  if(mousePressed&&mouseY<height-50){
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
  strokeWeight(3);
  line(0,height-50,width,height-50);
  stroke(0);
  strokeWeight(1);
  fill(255,0,0);
  rect(0,height-50,50,50);
  fill(0,255,0);
  rect(50,height-50,50,50);
  fill(0,0,255);
  rect(100,height-50,50,50);
  fill(255);
  rect(150,height-50,50,50);
  fill(0);
  rect(200,height-50,50,50);
  fill(255);
  rect(250,height-50,50,50);
  fill(0);
  text("?",275,height-25);
  
  if(mousePressed&&mouseX<50&&mouseY>height-50){
    r = 255; g = 0; b = 0;
  }
  if(mousePressed&&mouseX>50&&mouseX<100&&mouseY>height-50){
    r = 0; g = 255; b = 255;
  }
  if(mousePressed&&mouseX>100&&mouseX<150&&mouseY>height-50){
    r = 0; g = 0; b = 255;
  }
  if(mousePressed&&mouseX>150&&mouseX<200&&mouseY>height-50){
    r = 255; g = 255; b = 255;
  }
  if(mousePressed&&mouseX>200&&mouseX<250&&mouseY>height-50){
    r = 0; g = 0; b = 0;
  }
  if(mousePressed&&mouseX>250&&mouseX<300&&mouseY>height-50){
    r = random(255); g = random(255); b = random(255);
  }
  
  //pen size buttons
  
  
  
  
  
  fill(0);
  if(mousePressed&&mouseX>350-10&&mouseX<350+10&&mouseY>height-50){
    penSize = 50;
    fill(255);
  }
    ellipse(350,height-25,50,50);
    fill(0);
  if(mousePressed&&mouseX>400-10&&mouseX<400+10&&mouseY>height-50){
    penSize = 25;
    fill(255);
    
  }
    ellipse(400,height-25,25,25);
    fill(0);
  if(mousePressed&&mouseX>430-10&&mouseX<430+10&&mouseY>height-50){
    penSize = 8;
    fill(255);
  }
    ellipse(430,height-25,8,8);
    fill(0);
  if(mousePressed&&mouseX>450-9&&mouseX<450+9&&mouseY>height-50){
    penSize = 1;
    fill(255);
  }
  ellipse(460,height-25,2,2);
  
  //save button
  fill(255);
  rect(500,height-50,50,50);
  fill(0);
  text("SAVE",510,height-25);
  
  
  //eraseButton
  fill(100);
  rect(550,height-50,250,50);
  fill(0);
  text("ERASE",670,height-25);
  
 
  
  
}

  
void mousePressed(){
  if(mousePressed&&mouseX>500&&mouseX<550&&mouseY>height-50){
    saveFrame();   
  }
  
   if(mouseX>550&&mouseX<800&&mouseY>height-50){
    bR = random(255);
    bG = random(255);
    bB = random(255);
    background(bR,bG,bB);
    
  }
}
  

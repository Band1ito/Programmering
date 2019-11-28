float x;
float y; 


void setup(){
  size (1080, 800);
  
  x=width/2; 
  y=width/2; 
  
  background (245, 70, 70); 
}

void draw (){
  ellipse(x, 100, 50, 50);
  x = x+1;
  ellipseMode (CENTER);
  rectMode (CENTER); 
  background(245, 70 ,70);
  translate(x,y); 
  
  //HOVEDET 
  ellipse (150, 60, 50, 50);
  point (140, 60); 
  point (160, 60); 
  
  //KROPPEN
  rect (150, 135, 50, 100); 
  
  //ARMENE
  line (125, 85, 100, 160);
  line ( 175, 85, 200, 160);
  
  //BENENE MED FØDDERNE 
  line (130, 185, 130, 250);
  line (130, 250, 125, 250);
  line (170, 185, 170, 250); 
  line (170, 250, 175, 250); 

//DUPLICATE
  
  
  //HOVEDET 
  ellipse (-350, 60, 50, 50);
  point (-360, 60); 
  point (-340, 60); 
  
  //KROPPEN
  rect (-350, 135, 50, 100); 
  
  //HOVEDET 
  ellipse (50, 60, 50, 50);
  point (40, 60); 
  point (60, 60); 
  
  //KROPPEN
  rect (50, 135, 50, 100); 

//HOVEDET 
  ellipse (-50, 60, 50, 50);
  point (-40, 60); 
  point (-60, 60); 
  
  //KROPPEN
  rect (-50, 135, 50, 100); 
 
 //HOVEDET 
  ellipse (-150, 60, 50, 50);
  point (-140, 60); 
  point (-160, 60); 
  
  //KROPPEN
  rect (-150, 135, 50, 100); 
 
//HOVEDET 
  ellipse (-250, 60, 50, 50);
  point (-240, 60); 
  point (-260, 60); 
  
  //KROPPEN
  rect (-250, 135, 50, 100); 
}

float x;
float y; 


void setup(){
  size (1080, 800);
  
  x=width/2; 
  y=width/2; 
  
  background (245, 70, 70); 
}

void draw (){
  
  for(int i=0; i<4 ;i++){  
  
  
  x = x+20;
  ellipseMode (CENTER);
  rectMode (CENTER); 
  translate(x,y); 
  
  //HOVEDET 
  ellipse (-400, 60, 50, 50);
  point (-390, 60); 
  point (-410, 60); 
  
  //KROPPEN
  rect (-400, 135, 50, 100); 
  
  //ARMENE
  line (-375, 85, -280, 160);
  line ( -305, 85, -200, 160);
  
  //BENENE MED FØDDERNE 
  line (-380,185, -380, 250);
  line (-380, 250, -385, 250);
  line (-420, 185, -420, 250); 
  line (-420, 250, -425, 250); 

  }
}

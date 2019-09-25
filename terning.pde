void setup(){
size(800,800);
}

void draw(){
  background(168, 50, 52);
for (int j =0; j<=10; j++) {
  for(int k=1; k<=10; k=k+1) {
    
   float r=random(-3,3);
    fill(73, 21, 133);
    rect(50 + k*50 + r, 50 +j*50, 50, 50);
    
  } 
}
}

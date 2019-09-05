
int tal = 0;
int x = 10; 
int y = 30;


void setup() {
size(500, 500);
fill(50);
frameRate (0.5);
background (0, 0, 0);
}

void draw() {

  tal = tal+1;
  y = y+40;
  
  int r = (int) random (1,7);
println (r);
textSize (20);
fill(237, 230, 225);
text ("Antal" + tal + ":" + r, x, y);
}

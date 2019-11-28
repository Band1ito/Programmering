int x = 100;
int y = 100;
int a = 100;
int b = 100;
void setup() {
 

  size(1920, 1080);
  
 
}


void draw() {

 
  x=x+1;
  y=y+1;
  a=a+1;
  b=b+1;
  clear();
  
  background (43, 214, 43);
  ellipse(x, y, a, b);
}

void setup()
{
  size(1000, 1000);
  noLoop();
}

Die sammy;
int counter = 0;
int multi = 1;
int multiprice = (2000);

void draw()
{
  noStroke();
  fill(51);
  rect(0,0,1000,150);
  fill(255,255,255);
  stroke(0);
    textSize(50);
    int y1 = 60;
    text(("score: " + counter), 50, y1 );
    text(("multi: " + multi), 50, y1 + 50);
  
  fill(0);
  rect(800,20,180,100);
  fill(255,255,255);
  text((multiprice), 820, 70 );
  
   for (int x = 60; x <= 900; x += 110){
    for(int y = 200; y <= 900; y += 110){
      sammy = new Die(x, y);    
    sammy.show();
   
  }
   }
  //System.out.println(counter);
  
  //your code here
}
void mousePressed()
{
  redraw();
  
  //rect(800,20,180,100);
  
  if((mouseX >= 800 && mouseX <= 980) && (mouseY >= 20 && mouseY <= 120) && (counter >= multiprice)){
  counter -= multiprice;
  multi = multi * 2;
  multiprice = multiprice * 2;
  }
  
  
}
class Die //models one single dice cube
{
  int dienum, myX, myY;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    dienum = (int)(Math.random()*6);
    counter += dienum * multi;
    
    //variable initializations here
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    
    rect(myX, myY, 100,200);
    for(int dots = 0; dots <= dienum; dots++){
      fill(0);
      rect(myX+10+(dots*5), myY+10+(dots*5),5,5);
    }
fill(255,255,255);
    
    
  }
}

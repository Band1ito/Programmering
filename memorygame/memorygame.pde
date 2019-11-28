boolean toggle = true;//variable to keep track of switch
Card[] cards;//array to store all the cards
int showing;
String http = "http://";
 
//card's width and height: 105,130
void setup()
{
  size(490, 590);
 
  showing = 0;
 
  //arrays to store all the values
  cards = new Card[16];
  int[] suits = new int [16];
  int[] values = new int[16];
 
  //appropriate values for suits and values
  for (int i=0; i<16; i++)
  {
    suits[i] = i/4;//there are four suits like usual: diamond, heart, spades, clubs.
    values[i] = i/2;//two values, there are two different versions of each suit
  }
 
  //Scrambling the deck yo
  for (int i = 0; i < 16; i++)
  {
    int r = int(random(8));
 
    //swap suits
    int t = suits[i];
    suits[i] = suits [r];
    suits[r] = t;
 
    //swap values
    t = values[i];
    values[i] = values[r];
    values[r] = t;
  }
 
 
 
  int counter = 0;//counter inside the array
  for (int i = 0; i < 4; i++)//rows
  {
    for (int j=0; j < 4; j++)//columns
    {
      cards[counter] = new Card (20+115*j, 20+140*i, 105, 130, suits[counter], values[counter]); //spaces around cards
      counter++;
    }
  }
}
 
void draw()
{
  background(#e5e5e5);
  noStroke();
  for (int t=0; t < cards.length; t++)
  {
    cards[t].draw();
  }
}
 
 
void mouseClicked()//when mouse is clicked this runs
{
  for (int t= 0; t< cards.length; t++)//for each of the cards in the array have been clicked
  {
    cards[t].mouseClick();
  }
}
 
class Card
{
  public PVector posXY;
  public PVector posWH;
  public int suit, value, cc1, cc2;
  public PImage cardBack, card1, card2;
 
 
 
  boolean show; 
 
  public Card(int x, int y, int w, int h, int suitX, int valueX)
  {
    posXY = new PVector (x, y);
    posWH = new PVector (w, h);
 
    suit = suitX;
    value = valueX;
 
    show = false;
  }
 
  //draws the cards for now
  void draw()
  {
    if (!show)
    {
      cardBack = loadImage (http+"i.imgur.com/zHNyDLX.jpg");
      image(cardBack, posXY.x, posXY.y);
      noFill();
      stroke(#353535);
 
      if (mouseOverCard())
      {
        stroke(#08B3FF);
      }
      rect(posXY.x, posXY.y, posWH.x, posWH.y);
    } else
    {
      fill(255);
      noStroke();
      rect(posXY.x, posXY.y, posWH.x, posWH.y);
 
 
      //all the cards
      String [] diffCardSuit = 
      {
        http+"i.imgur.com/sBpAcV1.jpg", http+"i.imgur.com/9u6E450.jpg",http+"i.imgur.com/OKjcLB2.jpg", http+"i.imgur.com/vMUYopP.jpg"
      };
 
      if ( suit < 4 ) { 
        fill(255, 0, 0);
      }
 
      String [] diffCardValues = 
      {
        http+"i.imgur.com/77xBlCt.jpg",http+"i.imgur.com/ahIdoML.jpg",http+"i.imgur.com/5kv1t6X.jpg", http+"i.imgur.com/BOxnGwO.jpg"
      };
 
      if (value < 4)
      {
        card1 = loadImage(diffCardValues[value]);
        image(card1, posXY.x, posXY.y);
 
 
        //println("card value is " + value);
      } else
      {
        card2 = loadImage(diffCardSuit[suit]);
        image(card2, posXY.x, posXY.y);
 
        //println("card suit is " + suit);
      }
    }
  }
 
  boolean mouseOverCard()
  {
    return(mouseX >= posXY.x && mouseX < posXY.x+posWH.x && mouseY >= posXY.y && mouseY < posXY.y + posWH.y);
  }
 
  public void matchCheck()
  {
    //check value and suit with cc1, and cc2
    if (showing == 2)
    {
      showing = 0;
    }
  }
 
  void mouseClick()
  {
 
    if (mouseOverCard() /*&& !show*/)
    {
      show = !show;
      showing++;
      println(showing+","+ value+","+suit);
      matchCheck();
    }
  }
}

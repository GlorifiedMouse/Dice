int dieTotal;
float rollNum;
float totalRollAdd;

int textSize = 30;

void setup () {
  size (500, 500);
  background (0);
  strokeWeight(0);
  noLoop();
}

void draw () {
  background(0);
  int diceH = 5;
  int diceW = 5;
  for (int y = 100; y<(100+(diceH*60)); y +=60) {

    for (int x = 100; x<(100+(diceW*60)); x +=60) {
      Die bob = new Die(x, y, 2);
      bob.show();
      
      dieTotal += bob.face;
      totalRollAdd += bob.face;
      rollNum ++;
    }
  }
  textAlign(CENTER);
  stroke(255);
  fill(255);
  textSize(textSize);
  text("" + "average: " + (totalRollAdd / rollNum), width/2, height - 2*textSize);
  text("" + "currentTotal: " + dieTotal, width/2, height - textSize);
  dieTotal = 0;
}
void mousePressed () {
  redraw();
}

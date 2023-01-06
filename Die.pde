class Die {
  //properties
  int x;
  int y;
  int total = 0;
  int face;
  //constructor
  Die (int x_, int y_, int f) {
    x = x_;
    y = y_;

    face = f;
  }
  //methods

  void show () {
    face = (int)( Math.random ()*6)+1;
    int r = (int)(Math.random ()* 100)+156;
    int g = (int)(Math.random ()* 100)+156;
    int b = 255;//(int)(Math.random ()* 100)+156;
    fill (r, g, b);
    rect(x, y, 50, 50);
    if (face == 6) {
      fill (0);
      ellipse (x+10, y+10, 10, 10);
      ellipse (x+10, y+25, 10, 10);
      ellipse (x+10, y+40, 10, 10);
      ellipse (x+40, y+10, 10, 10);
      ellipse (x+40, y+25, 10, 10);
      ellipse (x+40, y+40, 10, 10);
    } else if (face == 5) {
      fill (0);
      ellipse (x+10, y+10, 10, 10);
      ellipse (x+10, y+40, 10, 10);
      ellipse (x+25, y+25, 10, 10);
      ellipse (x+40, y+10, 10, 10);
      ellipse (x+40, y+40, 10, 10);
    } else if (face == 4) {
      fill (0);
      ellipse (x+10, y+10, 10, 10);
      ellipse (x+10, y+40, 10, 10);
      ellipse (x+40, y+10, 10, 10);
      ellipse (x+40, y+40, 10, 10);
    } else if (face == 3) {
      fill (0);
      ellipse (x+10, y+10, 10, 10);
      ellipse (x+25, y+25, 10, 10);
      ellipse (x+40, y+40, 10, 10);
    } else if (face == 2) {
      fill (0);
      ellipse (x+15, y+15, 10, 10);
      ellipse (x+35, y+35, 10, 10);
    } else if (face == 1) {
      fill (0);
      ellipse (x+25, y+25, 10, 10);
    }
  }
}

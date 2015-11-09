class Button {
  int x, y; // The x- and y-coordinates
  int sizeX, sizeY; // Dimension (width and height)
  color baseGray; // Default gray value
  color overGray; // Value when mouse is over the button
  color pressGray; // Value when mouse is over and pressed
  boolean over = false; // True when the mouse is over
  boolean pressed = false; // True when the mouse is over and pressed
  String name;

  Button(int xp, int yp, int sx, int sy, color b, color o, color p, String n) {
    x = xp;
    y = yp;
    sizeX = sx;
    sizeY = sy;
    baseGray = b;
    overGray = o;
    pressGray = p;
    name = n;
  }

  // renders the over field every frame
  void update() 
  {
    if ((mouseX >= x) && (mouseX <= x+sizeX) && (mouseY >= y) && (mouseY <= y+sizeY)) {
      over = true;
    } else {
      over = false;
    }

    render();
  }

  boolean press() 
  {
    if (over == true) 
    {
      pressed = true;
      return true;
    } else {
      return false;
    }
  }

  void release() 
  {
    pressed = false; // Set to false when the mouse is released
  }

  void render() 
  {

    if (pressed == true)
      fill(pressGray);
    else if (over == true)
      fill(overGray);
    else 
    fill(baseGray);

    noStroke();
    rectMode(CORNER);
    rect(x, y, sizeX, sizeY);
    
    fill(255);
    text(name, x+7, y+13);
  }
}
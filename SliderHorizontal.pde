/* Slider Class - www.anthonymattox.com */
/* adapted by - www.guilhermemartins.net */

class SliderHorizontal {
  Button thisSlider_reset_bt;
  int x, y, w, h;
  float p, value; // value : final pos - the pos we want to know
  boolean slide;
  color c, cb, bg;
  float minval, maxval;
  float start;
  boolean resetButton;
  String name;

  /*
  
   x : x
   y : y
   s : size
   col : color
   start : start value
   _min : min value to be mapped
   _max : max value to be mapped
   _interp : interpolate true or false
   _filtro : interp filter
   
   */

  SliderHorizontal (int _x, int _y, int _w, int _h, color _col, color _bg, float _start, float _min, float _max, boolean _rb, String _name) {
    
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    slide = true;
    start = _start;
    c = _col;
    bg = _bg;
    minval = _min;
    maxval = _max;
    p = map(start, minval, maxval, x, x+w);
    value = map(p, x, x+w, minval, maxval);
    cb = color(red(c), green(c), blue(c));
    resetButton = _rb;
    name = _name;
    
    if (resetButton)
      thisSlider_reset_bt = new Button (x+w+5, y, h, h, buttonColor_base, buttonColor_hover, buttonColor_press, "");
  }

  void render() {
    
    update();
    
    // bg
    noStroke();
    fill(bg);
    rectMode(CORNER);
    rect(x, y, w, h);

    // slider
    noStroke();
    fill(cb);
    rectMode(CENTER);
    rect(p, y+(h/2), 1, h);

    // txt
    fill(255);
    text(value, x, y+h-1);
    
    //name
    text(name, (x+w)-24, y+h-1);
    
    if (resetButton)
      thisSlider_reset_bt.update();

  }
  
  void reset()
  {
    p = map(start, minval, maxval, x, x+w);
    value = map(p, x, x+w, minval, maxval);
  }

  void update()
  {

    if (slide=true && mousePressed==true && mouseY>y && mouseY<y+h) {
      if ((mouseX<=x+w) && (mouseX>=x)) {

        p = mouseX;
        value = map(p, x, x+w, minval, maxval);

        if (p<0) {
          p=0;
        } else if (p>x+w) {
          p=x+w;
        }
      }
    }
  }
  
  void checkButton()
  {
    if((thisSlider_reset_bt.over) && (!thisSlider_reset_bt.pressed))
      reset();
  }
  
  // this is useful if we need to update values that come from an outside source
  // ex: a loaded .csv file with values
  void update(float _pos)
  {
    value = _pos;
    p = map (value, -500.0, 500.0, x, x+w);
  }
 
  
}
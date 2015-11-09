class Accordion {
  Button header_bt, reset_bt;
  
  color header_color_open = color (68, 88, 113);
  color header_color_close = color (77, 81, 85);
  
  SliderHorizontal slider_x, slider_y, slider_z, slider_rotx, slider_roty, slider_rotz;
  int x, y;
  boolean open;
  String txt;
  int slider_width = 100;
  int slider_height = 14;
  float slider_min = -500.0;
  float slider_max = 500.0;
  color slider_color = color(10, 167, 255);
  
  Accordion(int _x, int _y, boolean _open, String _txt)
  {
    x = _x;
    y = _y;
    open = _open;
    txt = _txt;
    
    header_bt = new Button (x, y, 100, slider_height, header_color_open, buttonColor_hover, buttonColor_press, "");
    reset_bt = new Button (x+slider_width+5, y, slider_height, slider_height, buttonColor_base, buttonColor_hover, buttonColor_press, "");
    slider_x = new SliderHorizontal (x, y+slider_height, slider_width, slider_height, sliderStep_color, buttonColor_base, 0.0, slider_min, slider_max, true, "x");
    slider_y = new SliderHorizontal (x, y+(slider_height*2), slider_width, slider_height, sliderStep_color, buttonColor_base, 0.0, slider_min, slider_max, true, "y");
    slider_z = new SliderHorizontal (x, y+(slider_height*3), slider_width, slider_height, sliderStep_color, buttonColor_base, 0.0, slider_min, slider_max, true, "z");
    slider_rotx = new SliderHorizontal (x, y+(slider_height*4), slider_width, slider_height, sliderStep_color, buttonColor_base, 0.0, -180, 180, true, "rotx");
    slider_roty = new SliderHorizontal (x, y+(slider_height*5), slider_width, slider_height, sliderStep_color, buttonColor_base, 0.0, -180, 180, true, "roty");
    slider_rotz = new SliderHorizontal (x, y+(slider_height*6), slider_width, slider_height, sliderStep_color, buttonColor_base, 0.0, -180, 180, true, "rotz");
  }
  
  void update() 
  {
    
    header_bt.update();
    
        
    if (open)
    {
      renderChilds();
    }
    else
    {
    
    }
    
    render();
  }
  
  void render()
  {
    
    fill(255);
    text(txt, x+3, y+12);
    
  }
  
  void reset()
  {
    slider_x.reset();
    slider_y.reset();
    slider_z.reset();
    slider_rotx.reset();
    slider_roty.reset();
    slider_rotz.reset();
  }
  
  void renderChilds()
  {
    reset_bt.update();
    slider_x.render();
    slider_y.render();
    slider_z.render();
    slider_rotx.render();
    slider_roty.render();
    slider_rotz.render();
    
  }
  
  void resetButtonPress()
  {
    slider_x.checkButton();
    slider_y.checkButton();
    slider_z.checkButton();
    slider_rotx.checkButton();
    slider_roty.checkButton();
    slider_rotz.checkButton();
  }
  
}
  
  
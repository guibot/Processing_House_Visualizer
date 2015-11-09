class UIButtons
{
  
  SliderHorizontal slider_step, slider_translateX, slider_translateY, slider_translateZ,
                   slider_rotX, slider_rotY, slider_rotZ;
                   
  Button view_top, view_left, view_right, view_front, view_back, load_button, save_button;

  UIButtons()
  {
    load_button = new Button (buttons_x_pos-20, buttons_y_pos+15, 45, 20, buttonColor_base, color(0, 0, 255), buttonColor_press, "LOAD");
    save_button = new Button (buttons_x_pos+30, buttons_y_pos+15, 45, 20, buttonColor_base, color(255, 0, 0), buttonColor_press, "SAVE");

    view_top = new Button (buttons_x_pos-20, buttons_y_pos+110, 20, 20, buttonColor_base, buttonColor_hover, buttonColor_press, "T");
    view_left = new Button (buttons_x_pos+5, buttons_y_pos+110, 20, 20, buttonColor_base, buttonColor_hover, buttonColor_press, "L");
    view_right = new Button (buttons_x_pos+30, buttons_y_pos+110, 20, 20, buttonColor_base, buttonColor_hover, buttonColor_press, "R");
    view_front = new Button (buttons_x_pos+55, buttons_y_pos+110, 20, 20, buttonColor_base, buttonColor_hover, buttonColor_press, "F");
    view_back = new Button (buttons_x_pos+80, buttons_y_pos+110, 20, 20, buttonColor_base, buttonColor_hover, buttonColor_press, "B");
    
    slider_step = new SliderHorizontal (buttons_x_pos-20, buttons_y_pos+45, 100, 11, sliderStep_color, buttonColor_base, 0.05, 0.0, 0.05, false, "step");

    slider_translateX = new SliderHorizontal (buttons_x_pos-20, buttons_y_pos+60, 100, 11, sliderStep_color, buttonColor_base, 400, -900, 900, false, "x");
    slider_translateY = new SliderHorizontal (buttons_x_pos-20, buttons_y_pos+75, 100, 11, sliderStep_color, buttonColor_base, 300, -900, 900, false, "y");
    slider_translateZ = new SliderHorizontal (buttons_x_pos-20, buttons_y_pos+90, 100, 11, sliderStep_color, buttonColor_base, 300, -900, 900, false, "z");
    
    slider_rotX = new SliderHorizontal (buttons_x_pos+100, buttons_y_pos+60, 100, 11, sliderStep_color, buttonColor_base, 0.0, -4.0, 4.0, false, "rotX");
    slider_rotY = new SliderHorizontal (buttons_x_pos+100, buttons_y_pos+75, 100, 11, sliderStep_color, buttonColor_base, 0.0, -4.0, 4.0, false, "rotY");
    slider_rotZ = new SliderHorizontal (buttons_x_pos+100, buttons_y_pos+90, 100, 11, sliderStep_color, buttonColor_base, 0.0, -4.0, 4.0, false, "rotZ");
  }

  void update()
  {
  
    load_button.update();
    save_button.update();
    
    view_top.update();
    view_left.update();
    view_right.update();
    view_front.update();
    view_back.update();
    
    slider_step.render();

    slider_translateX.render();
    slider_translateY.render();
    slider_translateZ.render();
    
    slider_rotX.render();
    slider_rotY.render();
    slider_rotZ.render();
  }
}
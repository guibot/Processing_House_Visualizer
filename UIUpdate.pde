// // // // // // // // // // // 

// buttons update

// // // // // // // // // // // 

void UIUpdate()
{

  rotationButtons.update();

  accordion_front.update();
  accordion_front_layer.update();

  accordion_back.update();

  accordion_left.update();
  
  accordion_right.update();
  accordion_right_layer.update();

  accordion_roof_left.update();
  accordion_roof_right.update();

  rotation_translation_update();
}

// // // // // // // // // // // 
// rotations and translations update
// // // // // // // // // // // 

void rotation_translation_update() {

  // assign slider value to rotatio, translation and zoom steps
  rotation_step = rotationButtons.slider_step.value;

  // translations and rotations interpolations

  rotateX = rotationButtons.slider_rotX.value;
  rotateY = rotationButtons.slider_rotY.value;
  rotateZ = rotationButtons.slider_rotZ.value;

  translateX = rotationButtons.slider_translateX.value;
  translateY = rotationButtons.slider_translateY.value;
  translateZ = rotationButtons.slider_translateZ.value;

  translateX_smooth = translateX_smooth * (1.0-rotation_filter) + translateX * rotation_filter;
  translateY_smooth = translateY_smooth * (1.0-rotation_filter) + translateY * rotation_filter;
  translateZ_smooth = translateZ_smooth * (1.0-rotation_filter) + translateZ * rotation_filter;

  rotateX_smooth = rotateX_smooth * (1.0-rotation_filter) + rotateX * rotation_filter;
  rotateY_smooth = rotateY_smooth * (1.0-rotation_filter) + rotateY * rotation_filter;
  rotateZ_smooth = rotateZ_smooth * (1.0-rotation_filter) + rotateZ * rotation_filter;
}

// // // // // // // // // // // 

// mouse pressed

// // // // // // // // // // // 

void mousePressed() 
{
  // LOAD AND SAVE
  if ((rotationButtons.load_button.over) && (!rotationButtons.load_button.pressed))
      LoadFromFile();
      
  if ((rotationButtons.save_button.over) && (!rotationButtons.save_button.pressed))
     SaveToFile();

  // SET VIEWS
  
  if ((rotationButtons.view_top.over) && (!rotationButtons.view_top.pressed))
  {
    rotationButtons.slider_translateX.update(400.0);
    rotationButtons.slider_translateY.update(600.0);
    rotationButtons.slider_translateZ.update(70.0);
    rotationButtons.slider_rotX.update(-1.560);
    rotationButtons.slider_rotY.update(0.0);
    rotationButtons.slider_rotZ.update(0.0);
  }

  if ((rotationButtons.view_left.over) && (!rotationButtons.view_left.pressed))
  {
    rotationButtons.slider_translateX.update(700.0);
    rotationButtons.slider_translateY.update(300.0);
    rotationButtons.slider_translateZ.update(140.0);
    rotationButtons.slider_rotX.update(-0.060);
    rotationButtons.slider_rotY.update(1.320);
    rotationButtons.slider_rotZ.update(0.0);
  }

  if ((rotationButtons.view_right.over) && (!rotationButtons.view_right.pressed))
  {
    rotationButtons.slider_translateX.update(400.0);
    rotationButtons.slider_translateY.update(170.0);
    rotationButtons.slider_translateZ.update(-238.0);
    rotationButtons.slider_rotX.update(0.0);
    rotationButtons.slider_rotY.update(-1.260);
    rotationButtons.slider_rotZ.update(0.0);
  }

  if ((rotationButtons.view_front.over) && (!rotationButtons.view_front.pressed))
  {    
    rotationButtons.slider_translateX.update(392.0);
    rotationButtons.slider_translateY.update(210.0);
    rotationButtons.slider_translateZ.update(140.0);
    rotationButtons.slider_rotX.update(-0.060);
    rotationButtons.slider_rotY.update(-0.060);
    rotationButtons.slider_rotZ.update(0.0);
  }
  if ((rotationButtons.view_back.over) && (!rotationButtons.view_back.pressed))
  {    
    rotationButtons.slider_translateX.update(700.0);
    rotationButtons.slider_translateY.update(210.0);
    rotationButtons.slider_translateZ.update(-546.0);
    rotationButtons.slider_rotX.update(0.060);
    rotationButtons.slider_rotY.update(-3.0);
    rotationButtons.slider_rotZ.update(0.0);
  }

  // // // // // // // // // // // 
  // ACCORDION OPEN CLOSE
  // // // // // // // // // // // 

  if ((accordion_front.header_bt.over) && (!accordion_front.header_bt.pressed))
    accordion_front.open = !accordion_front.open;

  if ((accordion_front_layer.header_bt.over) && (!accordion_front_layer.header_bt.pressed))
    accordion_front_layer.open = !accordion_front_layer.open;

  if ((accordion_back.header_bt.over) && (!accordion_back.header_bt.pressed))
    accordion_back.open = !accordion_back.open;

  if ((accordion_left.header_bt.over) && (!accordion_left.header_bt.pressed))
    accordion_left.open = !accordion_left.open;

  if ((accordion_right.header_bt.over) && (!accordion_right.header_bt.pressed))
    accordion_right.open = !accordion_right.open;
    
  if ((accordion_right_layer.header_bt.over) && (!accordion_right_layer.header_bt.pressed))
    accordion_right_layer.open = !accordion_right_layer.open;

  if ((accordion_roof_left.header_bt.over) && (!accordion_roof_left.header_bt.pressed))
    accordion_roof_left.open = !accordion_roof_left.open;

  if ((accordion_roof_right.header_bt.over) && (!accordion_roof_right.header_bt.pressed))
    accordion_roof_right.open = !accordion_roof_right.open;


  // // // // // // // // // // // // // // // // // // // // // // // // //
  // RESET BUTTONS
  // // // // // // // // // // // // // // // // // // // // // // // // //

  if ((accordion_front.reset_bt.over) && (!accordion_front.reset_bt.pressed))
    accordion_front.reset();

  if ((accordion_front_layer.reset_bt.over) && (!accordion_front_layer.reset_bt.pressed))
    accordion_front_layer.reset();

  if ((accordion_back.reset_bt.over) && (!accordion_back.reset_bt.pressed))
    accordion_back.reset();

  if ((accordion_left.reset_bt.over) && (!accordion_left.reset_bt.pressed))
    accordion_left.reset();

  if ((accordion_right.reset_bt.over) && (!accordion_right.reset_bt.pressed))
    accordion_right.reset();
    
   if ((accordion_right_layer.reset_bt.over) && (!accordion_right_layer.reset_bt.pressed))
    accordion_right_layer.reset();

  if ((accordion_roof_left.reset_bt.over) && (!accordion_roof_left.reset_bt.pressed))
    accordion_roof_left.reset();

  if ((accordion_roof_right.reset_bt.over) && (!accordion_roof_right.reset_bt.pressed))
    accordion_roof_right.reset();
    
  // // // // // // // // // // // // // // // // // // // // // // // // //

  accordion_front.resetButtonPress();
  accordion_front_layer.resetButtonPress();

  accordion_back.resetButtonPress();
  accordion_left.resetButtonPress();
  
  accordion_right.resetButtonPress();
  accordion_right_layer.resetButtonPress();
  
  accordion_roof_left.resetButtonPress();
  accordion_roof_right.resetButtonPress();



}
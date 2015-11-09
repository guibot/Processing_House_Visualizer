

// // // // // // // // // // // 

// shapes and UI values

// // // // // // // // // // // 

PShape front, back, left, left_layer, right, right_layer, roof_left, front_layer;

float rotation_step;
float rotation_filter = 0.1;

float rotateY, rotateX, rotateZ;
float rotateX_smooth, rotateY_smooth, rotateZ_smooth;

float translateX = 400;
float translateY = 300;
float translateZ;
float translateX_smooth, translateY_smooth, translateZ_smooth;

int buttons_x_pos = 50;
int buttons_y_pos = 0;

color sliderStep_color = color(10, 167, 255);
color buttonColor_base = color(0);
color buttonColor_hover = color(150);
color buttonColor_press = color(250);

PFont sans;

// // // // // // // // // // // 

// accordion

// // // // // // // // // // // 

Accordion 
  accordion_front, 
  accordion_front_layer,
  accordion_back, 
  accordion_left, 
  accordion_right, 
  accordion_right_layer, 
  accordion_roof_left, 
  accordion_roof_right;
  
int accordionsTotal = 8;
int accordionSliders = 6;

float[][] sliderValues = new float [accordionsTotal][accordionSliders];
  

// // // // // // // // // // // 

// buttons

// // // // // // // // // // // 

UIButtons rotationButtons;

// // // // // // // // // // // 

// setup

// // // // // // // // // // // 

void setup() {
  size(1200, 800, P3D);
  
  accordion_front = new Accordion (buttons_x_pos-20, 150, true, "front");
  accordion_front_layer = new Accordion (buttons_x_pos+110, 150, true, "front layer");
  
  accordion_back = new Accordion (buttons_x_pos-20, 250, true, "back");
  accordion_left = new Accordion (buttons_x_pos-20, 350, true, "left");
  
  accordion_right = new Accordion (buttons_x_pos-20, 450, true, "right");
  accordion_right_layer = new Accordion (buttons_x_pos+110, 450, true, "right layer");
  
  accordion_roof_left = new Accordion (buttons_x_pos-20, 550, true, "roof left");
  accordion_roof_right = new Accordion (buttons_x_pos-20, 650, true, "roof right");
  
  sans = loadFont("SansSerif-11.vlw");
  textFont(sans, 11);
  
  rotationButtons = new UIButtons();

  //load objs
  front = loadShape("front.svg");
  front_layer = loadShape("front_layer.svg");
  
  back = loadShape("back.svg");
  
  left = loadShape("left.svg");
  left_layer = loadShape("left_layer.svg");
  
  right = loadShape("right.svg");
  right_layer = loadShape("right_layer.svg");
  
  roof_left = loadShape("roof_left.svg");
  
  
} 

// // // // // // // // // // // 

// draw

// // // // // // // // // // // 

void draw() {
  background(90);
  
  // update all buttons and sliders
  UIUpdate();
  
  
  
  // // // // // // // // // // // 
  // draw all objs
  // // // // // // // // // // // 

  

  pushMatrix();
  translate(translateX_smooth, translateY_smooth, translateZ_smooth);

  rotateY(rotateY_smooth);
  rotateX(rotateX_smooth);
  rotateZ(rotateZ_smooth);

  drawAxl(color(255, 0, 0));

      // draw front
      if (accordion_front.open)
      {
      pushMatrix();
        translate(accordion_front.slider_x.value, accordion_front.slider_y.value, accordion_front.slider_z.value);
        rotateX(radians(accordion_front.slider_rotx.value));
        rotateY(radians(accordion_front.slider_roty.value));
        rotateZ(radians(accordion_front.slider_rotz.value));
        //drawAxl(color(0, 255, 0));
        shape(front, 0, 0); 
      popMatrix();
      }
      
      // draw front layer
      if (accordion_front_layer.open)
      {
      pushMatrix();
        translate(accordion_front_layer.slider_x.value, accordion_front_layer.slider_y.value, accordion_front_layer.slider_z.value);
        rotateX(radians(accordion_front_layer.slider_rotx.value));
        rotateY(radians(accordion_front_layer.slider_roty.value));
        rotateZ(radians(accordion_front_layer.slider_rotz.value));
        shape(front_layer, 0, 0); 
      popMatrix();
      }
      
      // draw back
      if (accordion_back.open)
      {
      pushMatrix();
        translate(accordion_back.slider_x.value, accordion_back.slider_y.value, accordion_back.slider_z.value);
        rotateX(radians(accordion_back.slider_rotx.value));
        rotateY(radians(accordion_back.slider_roty.value));
        rotateZ(radians(accordion_back.slider_rotz.value));
        shape(back, 0, 0); 
      popMatrix();
      }
      
      // draw left
      if (accordion_left.open)
      {
      pushMatrix();
        translate(accordion_left.slider_x.value, accordion_left.slider_y.value, accordion_left.slider_z.value);
        rotateX(radians(accordion_left.slider_rotx.value));
        rotateY(radians(accordion_left.slider_roty.value));
        rotateZ(radians(accordion_left.slider_rotz.value));
        shape(left, 0, 0); 
      popMatrix();
      }
      
       // draw right
       if (accordion_right.open)
      {
      pushMatrix();
        translate(accordion_right.slider_x.value, accordion_right.slider_y.value, accordion_right.slider_z.value);
        rotateX(radians(accordion_right.slider_rotx.value));
        rotateY(radians(accordion_right.slider_roty.value));
        rotateZ(radians(accordion_right.slider_rotz.value));
        shape(right, 0, 0); 
      popMatrix();
      }
      
       // draw right layer
       if (accordion_right_layer.open)
      {
      pushMatrix();
        translate(accordion_right_layer.slider_x.value, accordion_right_layer.slider_y.value, accordion_right_layer.slider_z.value);
        rotateX(radians(accordion_right_layer.slider_rotx.value));
        rotateY(radians(accordion_right_layer.slider_roty.value));
        rotateZ(radians(accordion_right_layer.slider_rotz.value));
        shape(right_layer, 0, 0); 
      popMatrix();
      }
      
       // draw roof left
      if (accordion_roof_left.open)
      {
      pushMatrix();
      translate(accordion_roof_left.slider_x.value, accordion_roof_left.slider_y.value, accordion_roof_left.slider_z.value);
        pushMatrix();
          rotateX(radians(accordion_roof_left.slider_rotx.value));
          rotateY(radians(accordion_roof_left.slider_roty.value));
          rotateZ(radians(accordion_roof_left.slider_rotz.value));
          //drawAxl(color(0, 255, 0));
          shape(roof_left, 0, 0); 
        popMatrix();
      popMatrix();
      }
      
       // draw roof right
      if (accordion_roof_right.open)
      {
      pushMatrix();
        translate(accordion_roof_right.slider_x.value, accordion_roof_right.slider_y.value, accordion_roof_right.slider_z.value);
        rotateX(radians(accordion_roof_right.slider_rotx.value));
        rotateY(radians(accordion_roof_right.slider_roty.value));
        rotateZ(radians(accordion_roof_right.slider_rotz.value));
        shape(roof_left, 0, 0); 
      popMatrix();
      }
      

  popMatrix();
  
  populateAccordionArray();
  
  
 
}

void populateAccordionArray()
{
  // front
  sliderValues[0][0] = accordion_front.slider_x.value;
  sliderValues[0][1] = accordion_front.slider_y.value;
  sliderValues[0][2] = accordion_front.slider_z.value;
  sliderValues[0][3] = accordion_front.slider_rotx.value;
  sliderValues[0][4] = accordion_front.slider_roty.value;
  sliderValues[0][5] = accordion_front.slider_rotz.value;
  
  // front layer
  sliderValues[6][0] = accordion_front_layer.slider_x.value;
  sliderValues[6][1] = accordion_front_layer.slider_y.value;
  sliderValues[6][2] = accordion_front_layer.slider_z.value;
  sliderValues[6][3] = accordion_front_layer.slider_rotx.value;
  sliderValues[6][4] = accordion_front_layer.slider_roty.value;
  sliderValues[6][5] = accordion_front_layer.slider_rotz.value;
  
  // back
  sliderValues[1][0] = accordion_back.slider_x.value;
  sliderValues[1][1] = accordion_back.slider_y.value;
  sliderValues[1][2] = accordion_back.slider_z.value;
  sliderValues[1][3] = accordion_back.slider_rotx.value;
  sliderValues[1][4] = accordion_back.slider_roty.value;
  sliderValues[1][5] = accordion_back.slider_rotz.value;
  
  // left
  sliderValues[2][0] = accordion_left.slider_x.value;
  sliderValues[2][1] = accordion_left.slider_y.value;
  sliderValues[2][2] = accordion_left.slider_z.value;
  sliderValues[2][3] = accordion_left.slider_rotx.value;
  sliderValues[2][4] = accordion_left.slider_roty.value;
  sliderValues[2][5] = accordion_left.slider_rotz.value;
  
  // right
  sliderValues[3][0] = accordion_right.slider_x.value;
  sliderValues[3][1] = accordion_right.slider_y.value;
  sliderValues[3][2] = accordion_right.slider_z.value;
  sliderValues[3][3] = accordion_right.slider_rotx.value;
  sliderValues[3][4] = accordion_right.slider_roty.value;
  sliderValues[3][5] = accordion_right.slider_rotz.value;
  
  // right
  sliderValues[7][0] = accordion_right_layer.slider_x.value;
  sliderValues[7][1] = accordion_right_layer.slider_y.value;
  sliderValues[7][2] = accordion_right_layer.slider_z.value;
  sliderValues[7][3] = accordion_right_layer.slider_rotx.value;
  sliderValues[7][4] = accordion_right_layer.slider_roty.value;
  sliderValues[7][5] = accordion_right_layer.slider_rotz.value;
  
  // roof left
  sliderValues[4][0] = accordion_roof_left.slider_x.value;
  sliderValues[4][1] = accordion_roof_left.slider_y.value;
  sliderValues[4][2] = accordion_roof_left.slider_z.value;
  sliderValues[4][3] = accordion_roof_left.slider_rotx.value;
  sliderValues[4][4] = accordion_roof_left.slider_roty.value;
  sliderValues[4][5] = accordion_roof_left.slider_rotz.value;
  
  // roof right
  sliderValues[5][0] = accordion_roof_right.slider_x.value;
  sliderValues[5][1] = accordion_roof_right.slider_y.value;
  sliderValues[5][2] = accordion_roof_right.slider_z.value;
  sliderValues[5][3] = accordion_roof_right.slider_rotx.value;
  sliderValues[5][4] = accordion_roof_right.slider_roty.value;
  sliderValues[5][5] = accordion_roof_right.slider_rotz.value;
  
}


void drawAxl(color c)
{
  pushMatrix();
    stroke(c);
    line(0, 0, 40, 0);
    text('x', 45, 0);
    line(0, 0, 0, 40);
    text('y', 0, 45);
    pushMatrix();
      rotateY(radians(90));
      line(0, 0, 40, 0);
      text('z', 45, 0);
    popMatrix();
  popMatrix();
  
}
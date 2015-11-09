Table accordionTable;

void SaveToFile() {

  accordionTable = new Table();
  
  accordionTable.addColumn("id");
  accordionTable.addColumn("x");
  accordionTable.addColumn("y");
  accordionTable.addColumn("z");
  accordionTable.addColumn("rotx");
  accordionTable.addColumn("roty");
  accordionTable.addColumn("rotz");
  
  TableRow accordion0 = accordionTable.addRow();
  
  accordion0.setInt("id", 0);
  accordion0.setFloat("x", accordion_front.slider_x.value);
  accordion0.setFloat("y", accordion_front.slider_y.value);
  accordion0.setFloat("z", accordion_front.slider_z.value);
  accordion0.setFloat("rotx", accordion_front.slider_rotx.value);
  accordion0.setFloat("roty", accordion_front.slider_roty.value);
  accordion0.setFloat("rotz", accordion_front.slider_rotz.value);
  
  TableRow accordion1 = accordionTable.addRow();
  
  accordion1.setInt("id", 1);
  accordion1.setFloat("x", accordion_back.slider_x.value);
  accordion1.setFloat("y", accordion_back.slider_y.value);
  accordion1.setFloat("z", accordion_back.slider_z.value);
  accordion1.setFloat("rotx", accordion_back.slider_rotx.value);
  accordion1.setFloat("roty", accordion_back.slider_roty.value);
  accordion1.setFloat("rotz", accordion_back.slider_rotz.value);
  
  TableRow accordion2 = accordionTable.addRow();
  
  accordion2.setInt("id", 2);
  accordion2.setFloat("x", accordion_left.slider_x.value);
  accordion2.setFloat("y", accordion_left.slider_y.value);
  accordion2.setFloat("z", accordion_left.slider_z.value);
  accordion2.setFloat("rotx", accordion_left.slider_rotx.value);
  accordion2.setFloat("roty", accordion_left.slider_roty.value);
  accordion2.setFloat("rotz", accordion_left.slider_rotz.value);
  
  TableRow accordion3 = accordionTable.addRow();
  
  accordion3.setInt("id", 3);
  accordion3.setFloat("x", accordion_right.slider_x.value);
  accordion3.setFloat("y", accordion_right.slider_y.value);
  accordion3.setFloat("z", accordion_right.slider_z.value);
  accordion3.setFloat("rotx", accordion_right.slider_rotx.value);
  accordion3.setFloat("roty", accordion_right.slider_roty.value);
  accordion3.setFloat("rotz", accordion_right.slider_rotz.value);
  
  TableRow accordion4 = accordionTable.addRow();
  
  accordion4.setInt("id", 4);
  accordion4.setFloat("x", accordion_roof_left.slider_x.value);
  accordion4.setFloat("y", accordion_roof_left.slider_y.value);
  accordion4.setFloat("z", accordion_roof_left.slider_z.value);
  accordion4.setFloat("rotx", accordion_roof_left.slider_rotx.value);
  accordion4.setFloat("roty", accordion_roof_left.slider_roty.value);
  accordion4.setFloat("rotz", accordion_roof_left.slider_rotz.value);
  
  TableRow accordion5 = accordionTable.addRow();
  
  accordion5.setInt("id", 5);
  accordion5.setFloat("x", accordion_roof_right.slider_x.value);
  accordion5.setFloat("y", accordion_roof_right.slider_y.value);
  accordion5.setFloat("z", accordion_roof_right.slider_z.value);
  accordion5.setFloat("rotx", accordion_roof_right.slider_rotx.value);
  accordion5.setFloat("roty", accordion_roof_right.slider_roty.value);
  accordion5.setFloat("rotz", accordion_roof_right.slider_rotz.value);
  
   TableRow accordion6 = accordionTable.addRow();
  
  accordion6.setInt("id", 6);
  accordion6.setFloat("x", accordion_front_layer.slider_x.value);
  accordion6.setFloat("y", accordion_front_layer.slider_y.value);
  accordion6.setFloat("z", accordion_front_layer.slider_z.value);
  accordion6.setFloat("rotx", accordion_front_layer.slider_rotx.value);
  accordion6.setFloat("roty", accordion_front_layer.slider_roty.value);
  accordion6.setFloat("rotz", accordion_front_layer.slider_rotz.value);
  
  TableRow accordion7 = accordionTable.addRow();
  
  accordion7.setInt("id", 7);
  accordion7.setFloat("x", accordion_right_layer.slider_x.value);
  accordion7.setFloat("y", accordion_right_layer.slider_y.value);
  accordion7.setFloat("z", accordion_right_layer.slider_z.value);
  accordion7.setFloat("rotx", accordion_right_layer.slider_rotx.value);
  accordion7.setFloat("roty", accordion_right_layer.slider_roty.value);
  accordion7.setFloat("rotz", accordion_right_layer.slider_rotz.value);

  saveTable(accordionTable, "data/accordions.csv");
}

Table tableLoaded;

void LoadFromFile() {
  
    tableLoaded = loadTable("data/accordions.csv", "header");
  
    //println(tableLoaded.getRowCount() + " total rows in table"); 
  
    for (TableRow row : tableLoaded.rows()) {
      
      int id = row.getInt("id");
      float x = row.getFloat("x");
      float y = row.getFloat("y");
      float z = row.getFloat("z");
      float rotx = row.getFloat("rotx");
      float roty = row.getFloat("roty");
      float rotz = row.getFloat("rotz");
      
      //println("ID: "+id+" x:"+x+" y:"+y+" z:"+z+" rotx:"+rotx+" roty:"+roty+" rotz:"+ rotz);
      
      switch(id){
      
      case 0:
        accordion_front.slider_x.update(x);
        accordion_front.slider_y.update(y);
        accordion_front.slider_z.update(z);
        accordion_front.slider_rotx.update(rotx);
        accordion_front.slider_roty.update(roty);
        accordion_front.slider_rotz.update(rotz);
      break;
      case 1:
        accordion_back.slider_x.update(x);
        accordion_back.slider_y.update(y);
        accordion_back.slider_z.update(z);
        accordion_back.slider_rotx.update(rotx);
        accordion_back.slider_roty.update(roty);
        accordion_back.slider_rotz.update(rotz);
      break;
      case 2:
        accordion_left.slider_x.update(x);
        accordion_left.slider_y.update(y);
        accordion_left.slider_z.update(z);
        accordion_left.slider_rotx.update(rotx);
        accordion_left.slider_roty.update(roty);
        accordion_left.slider_rotz.update(rotz);
      break;
      case 3:
        accordion_right.slider_x.update(x);
        accordion_right.slider_y.update(y);
        accordion_right.slider_z.update(z);
        accordion_right.slider_rotx.update(rotx);
        accordion_right.slider_roty.update(roty);
        accordion_right.slider_rotz.update(rotz);
      break;
      case 4:
        accordion_roof_left.slider_x.update(x);
        accordion_roof_left.slider_y.update(y);
        accordion_roof_left.slider_z.update(z);
        accordion_roof_left.slider_rotx.update(rotx);
        accordion_roof_left.slider_roty.update(roty);
        accordion_roof_left.slider_rotz.update(rotz);
      break;
      case 5:
        accordion_roof_right.slider_x.update(x);
        accordion_roof_right.slider_y.update(y);
        accordion_roof_right.slider_z.update(z);
        accordion_roof_right.slider_rotx.update(rotx);
        accordion_roof_right.slider_roty.update(roty);
        accordion_roof_right.slider_rotz.update(rotz);
      break;
      case 6:
        accordion_front_layer.slider_x.update(x);
        accordion_front_layer.slider_y.update(y);
        accordion_front_layer.slider_z.update(z);
        accordion_front_layer.slider_rotx.update(rotx);
        accordion_front_layer.slider_roty.update(roty);
        accordion_front_layer.slider_rotz.update(rotz);
      break;
      case 7:
        accordion_right_layer.slider_x.update(x);
        accordion_right_layer.slider_y.update(y);
        accordion_right_layer.slider_z.update(z);
        accordion_right_layer.slider_rotx.update(rotx);
        accordion_right_layer.slider_roty.update(roty);
        accordion_right_layer.slider_rotz.update(rotz);
      break;
      
    }
  }
  }
  
// CSci-5609 Project

PVector[] track_points;
int displayMode = 1;
float lerpAmount = 0;
boolean lerpit = true;
int last;
int factor = 5;
void setup() {
  size(256,360, P3D);  // Use the P3D renderer for 3D graphics
  
  // load in .csv files
  Table beforeTable = loadTable("Alberto2018Data.csv", "header"); 


  beforeTable.removeRow(0);
  beforeTable.removeRow(0);
  track_points = new PVector[beforeTable.getRowCount()];
  
  for (int i = 0; i < beforeTable.getRowCount(); i++) {
    track_points[i] = new PVector(beforeTable.getFloat(i, 2), 
                                  beforeTable.getFloat(i, 4));
  }

}

void draw() {
  background(0);  // reset background to black
  stroke(255);    // set stroke to white

last = track_points.length-1;
println(track_points[0].x,track_points[0].y);
println(track_points[last].x,track_points[last].y);

  for (int i = 0; i < last; i++){
      if (track_points[i] != null) {
      //println(track_points[i].x,track_points[i].y);
      point(track_points[i].x * factor,track_points[i].y * factor - 200);
  }
  }

}

int slashsize = 40;
PShape slash;
PShape backslash;

void setup() {
  size(640, 360);
  slash = loadShape("slash.svg");
  backslash = loadShape("backslash.svg");
  noLoop();
} 

void draw() {
  background(102);
  slash.disableStyle();
  backslash.disableStyle();
  fill(255);
  noStroke();
  
  for (int j=0; j*slashsize<screen.height; j++) {
    for (int i=0; i*slashsize<screen.width; i++) {
      Pshape thisshape;
      if(random(0,1)<0.5) {
        thisshape = slash;
      }
      else {
        thisshape = backslash;
      }
      shape(thisslash, i*slashsize, j*slashsize, slashsize, slashsize);
    }
  }
}

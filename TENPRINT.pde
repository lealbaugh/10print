import processing.pdf.*

int slashsize = 20;
PShape slash;
PShape backslash;

color[] colors = {color(0,136,204), color(204,236,251)};

void setup() {
  size(800, 800);
  slash = loadShape("slash.svg");
  backslash = loadShape("backslash.svg");
  noLoop();
} 

void draw() {
//  background(195, 230,174);
  background(colors[0]);
  slash.disableStyle();
  backslash.disableStyle();
  fill(255);
  noStroke();
  
  for (int j=0; j*slashsize<displayHeight; j++) {
    for (int i=0; i*slashsize<displayWidth; i++) {
      PShape thisshape;
      if(random(0,1)<0.5) {
        thisshape = slash;
      }
      else {
        thisshape = backslash;
      }
      if (colors.length>2) {
        fill(colors[int(random(1, colors.length))]);
      }
      else  fill(colors[1]);
      shape(thisshape, i*slashsize, j*slashsize, slashsize, slashsize+1);
    }
  }
}

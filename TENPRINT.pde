import processing.pdf.*;
// http://processing.org/reference/libraries/pdf/

int canvasWidth = 800;
int canvasHeight = 800;
int slashsize = 20;
// Sizes in pixels

Boolean pixelated = false;

//color[] colors = {color(0,136,204), color(204,236,251)};
color[] colors = {color(102,152,253), color(204,219,251)}; //C64-appropriate
// First color is the background, later colors are selected randomly for the foreground

PShape slash;
PShape backslash;

void setup() {
  size(800,800, PDF, "Random-variations.pdf");
  if (pixelated) {
    slash = loadShape("slash-pixelated.svg");
    backslash = loadShape("backslash-pixelated.svg");
  }
  else {
    slash = loadShape("slash.svg");
    backslash = loadShape("backslash.svg");
  }
  noLoop();
} 

void draw() {
  background(colors[0]);
  slash.disableStyle();
  backslash.disableStyle();
  // disableStyle allows us to pick our own line/fill styling for an svg
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
      shape(thisshape, i*slashsize, j*slashsize, slashsize, slashsize);
    }
  }
  exit();
}

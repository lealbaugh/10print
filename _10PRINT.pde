int slashsize = 40;
PShape slash;
PShape backslash;

//color[] colors = {color(90,65,128), color(98,100,153), color(128,161,179), color(157,204,190), color(195, 230,174)};
//palette from http://www.colourlovers.com/palette/91700/self_soothing
color[] colors = { color(157,204,190), color(128,161,179)};

void setup() {
  size(800, 800);
  slash = loadShape("slash.svg");
  backslash = loadShape("backslash.svg");
  noLoop();
} 

void draw() {
  background(195, 230,174);
  slash.disableStyle();
  backslash.disableStyle();
  fill(255);
  noStroke();
  
  for (int j=0; j*slashsize<screen.height; j++) {
    for (int i=0; i*slashsize<screen.width; i++) {
      PShape thisshape;
      if(random(0,1)<0.5) {
        thisshape = slash;
      }
      else {
        thisshape = backslash;
      }
      fill(colors[int(random(0, colors.length))]);
      shape(thisshape, i*slashsize, j*slashsize, slashsize, slashsize+1);
    }
  }
}

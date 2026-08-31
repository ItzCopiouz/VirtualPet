int scale = 100;
color[] palette;

int[][] bee = {
  {1, 1, 1, 1, 1, 1, 1, 1},
  {1, 0, 1, 1, 1, 1, 0, 1},
  {1, 1, 1, 1, 1, 1, 1, 1},
  {1, 1, 1, 1, 1, 1, 1, 1},
  {0, 2, 1, 1, 1, 1, 2, 0},
  {0, 0, 1, 1, 1, 1, 0, 0},
  {0, 0, 1, 1, 1, 1, 0, 0},
  {1, 1, 1, 1, 1, 1, 1, 1}
};

void setup() {
  size(800, 800);
  strokeWeight(3.5);
  noLoop();
  palette = new color[3];
  palette[0] = color(0, 0, 0);
  palette[1] = color(252, 206, 38);
  palette[2] = color(50, 199, 227);
}

void draw() {
  for (int row = 0; row < 8; row++) {
    for (int col = 0; col < 8; col++) {
      fill(palette[bee[row][col]]);
      rect(col * scale, row * scale, scale, scale);
    }
  }
}

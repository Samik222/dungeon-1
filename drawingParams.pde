final float CELL_SCALE = 0.8;

int cellSize;
int levelPixelWidth;
int levelPixelHeight;
int centeringShiftX;
int centeringShiftY;

PFont mainFont;

PImage wallImage;
PImage doorImage;
PImage coinImage;
PImage PandaImage;

void recalcDrawingParams() {
  cellSize = int(min(width / currentLevelWidth, height / currentLevelHeight) * 0.8);
  levelPixelWidth = currentLevelWidth * cellSize;
  levelPixelHeight = currentLevelHeight * cellSize;
  centeringShiftX = (width - levelPixelWidth) / 2;
  centeringShiftY = (height - levelPixelHeight) / 2;
}

void loadFonts() {
  mainFont = createFont("arcadeclassic.regular.ttf", 32);
  textFont(mainFont);
}

void loadImages() {
  wallImage = loadImage("wall.png");
  doorImage = loadImage("door.png");
  coinImage = loadImage("coin.png");
  PandaImage = loadImage("Panda.png");
}

float cellSize = 500.0 / 3;

void drawX(int row, int col) {
  float xCenter = col * cellSize + cellSize / 2;
  float yCenter = row * cellSize + cellSize / 2;

  stroke(0);
  strokeWeight(4);

  float offset = 50;
  line(xCenter - offset, yCenter - offset, xCenter + offset, yCenter + offset);
  line(xCenter - offset, yCenter + offset, xCenter + offset, yCenter - offset);
}

void drawO(int row, int col) {
  float xCenter = col * cellSize + cellSize / 2;
  float yCenter = row * cellSize + cellSize / 2;

  stroke(0);
  strokeWeight(4);
  noFill();
  ellipse(xCenter, yCenter, 100, 100);
}

void drawBoard(){
  line(166, 0, 166, 500);
  line(332, 0, 332, 500);

  line(0, 166, 500, 166);
  line(0, 332, 500, 332);
}

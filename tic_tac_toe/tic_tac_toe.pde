void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  drawBoard();

  for (int row = 0; row < 3; row++) {
    for (int col = 0; col < 3; col++) {
      if (board[row][col] == 2) {
        drawX(row, col);
      } else if (board[row][col] == 1) {
        drawO(row, col);
      }
    }
  }

  int winner = winCondition();

  if (winner == PLAYER) {
    println("Player wins!");
    noLoop();
  }else if (winner == COMPUTER) {
    println("Computer wins!");
    noLoop();
  }
  boolean full = true;
  for (int r = 0; r < 3; r++) {
    for (int c = 0; c < 3; c++) {
      if (board[r][c] == 0) full = false;
    }
  }

  if (full && winner == 0) {
    println("It's a tie!");
    noLoop();
  }

  computersTurn();
}

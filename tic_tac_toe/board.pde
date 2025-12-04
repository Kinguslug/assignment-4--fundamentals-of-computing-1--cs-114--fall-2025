int[][] board = {
  {0, 0, 0},
  {0, 0, 0},
  {0, 0, 0}
};

void computersTurn() {
  if (turnCounter == 0) {
    switch (computersPlay){
      case 0:
        board[2][0] = COMPUTER;
        ++computersPlay;
        ++turnCounter;
        break;
      case 1:
        if (board[2][1] == 0 && board[2][2] == 0 && board[1][2] == 0) {
          board[2][2] = COMPUTER;
          ++computersPlay;
          ++turnCounter;
          break;
        }else {
          board[0][0] = COMPUTER;
          ++computersPlay;
          ++turnCounter;
          break;
        }
      case 2:
        if (board[2][0] == COMPUTER && board[2][2] == COMPUTER && board[2][1] == 0) {
          board[2][1] = COMPUTER;
          ++computersPlay;
          ++turnCounter;
          break;
        }else if (board[2][0] == COMPUTER && board[0][0] == COMPUTER && board[1][0] == 0) {
          board[1][0] = COMPUTER;
          ++computersPlay;
          ++turnCounter;
          break;
        }else {
          board[0][2] = COMPUTER;
          ++computersPlay;
          ++turnCounter;
          break;
        }
      case 3:
        if (board[0][0] == COMPUTER && board[0][2] == COMPUTER && board[0][1] == 0) {
          board[0][1] = COMPUTER;
          ++computersPlay;
          ++turnCounter;
          break;
        }else if (board[0][2] == COMPUTER && board[2][2] == COMPUTER && board[1][2] == 0) {
          board[1][2] = COMPUTER;
          ++computersPlay;
          ++turnCounter;
          break;
        }else if (board [1][1] == 0) {
          board[1][1] = COMPUTER;
          ++computersPlay;
          ++turnCounter;
          break;
        }else {
          // Random fallback
          while (true) {
            int r = int(random(9));   // picks 0–8
            int row = r / 3;
            int col = r % 3;

            if (board[row][col] == 0) {
              board[row][col] = COMPUTER;
              ++computersPlay;
              ++turnCounter;
              break;
            }
          }
          break;
        }
      case 4:
        while (true) {
          int r = int(random(9));   // picks 0–8
          int row = r / 3;
          int col = r % 3;

          if (board[row][col] == 0) {
            board[row][col] = COMPUTER;
            ++computersPlay;
            ++turnCounter;
            break;
          }
        }
        break;
    }
  }
}


void keyPressed(){
  playersTurn(key);
}

void playersTurn(char key){
  if (turnCounter == 1){
    switch (key) {
      case '0':
        if (board[0][0] == 0) {
          board[0][0] = PLAYER;
          --turnCounter;
          break;
        }else {
          println("try again");
          break;
        }

      case '1':
        if (board[0][1] == 0) {
          board[0][1] = PLAYER;
          --turnCounter;
          break;
        }else {
          println("try again");
          break;
        }

      case '2':
        if (board[0][2] == 0) {
          board[0][2] = PLAYER;
          --turnCounter;
          break;
        }else {
          println("try again");
          break;
        }

      case '3':
        if (board[1][0] == 0){
          board[1][0] = PLAYER;
          --turnCounter;
          break;
        }else {
          println("try again");
          break;
        }

      case '4':
        if (board[1][1] == 0) {
          board[1][1] = PLAYER;
          --turnCounter;
          break;
        }else {
          println("try again");
          break;
        }

      case '5':
        if (board[1][2] == 0) {
          board[1][2] = PLAYER;
          --turnCounter;
          break;
        }else {
          println("try again");
          break;
        }

      case '6':
        if (board[2][0] == 0) {
          board[2][0] = PLAYER;
          --turnCounter;
          break;
        }else {
          println("try again");
          break;
        }

      case '7':
        if (board[2][1] == 0) {
          board[2][1] = PLAYER;
          --turnCounter;
          break;
        }else {
          println("try again");
          break;
        }

      case '8':
        if (board[2][2] == 0) {
          board[2][2] = PLAYER;
          --turnCounter;
          break;
        }else {
          println("try again");
          break;
        }

      default:
        println("invalid input");
        break;

    }
  }
}

int winCondition() {
  for (int r = 0; r < 3; r++) {
    if (board[r][0] != 0 && board[r][0] == board[r][1] && board[r][1] == board[r][2]) {
      return board[r][0];
    }
  }

  for (int c = 0; c < 3; c++) {
    if (board[0][c] != 0 && board[0][c] == board[1][c] && board[1][c] == board[2][c]) {
      return board[0][c];
    }
  }

  if (board[0][0] != 0 && board[0][0] == board[1][1] && board[1][1] == board[2][2]) {
    return board[0][0];
  }

  if (board[0][2] != 0 && board[0][2] == board[1][1] && board[1][1] == board[2][0]) {
    return board[0][2];
  }

  return 0;
}

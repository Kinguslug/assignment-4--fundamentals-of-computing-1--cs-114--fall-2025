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
}

void keyPressed() {
  switch (key) {
    case '0':
      if (board[0][0] == 0) {
        board[0][0] = PLAYER;
        break;
      }else {
        println("try again");
        break;
      }

    case '1':
      if (board[0][1] == 0) {
        board[0][1] = PLAYER;
        break;
      }else {
        println("try again");
        break;
      }

    case '2':
      if (board[0][2] == 0) {
        board[0][2] = PLAYER;
        break;
      }else {
        println("try again");
        break;
      }

    case '3':
      if (board[1][0] == 0){
        board[1][0] = PLAYER;
        break;
      }else {
        println("try again");
        break;
      }

    case '4':
      if (board[1][1] == 0) {
        board[1][1] = PLAYER;
        break;
      }else {
        println("try again");
        break;
      }

    case '5':
      if (board[1][2] == 0) {
        board[1][2] = PLAYER;
        break;
      }else {
        println("try again");
        break;
      }

    case '6':
      if (board[2][0] == 0) {
        board[2][0] = PLAYER;
        break;
      }else {
        println("try again");
        break;
      }

    case '7':
      if (board[2][1] == 0) {
        board[2][1] = PLAYER;
        break;
      }else {
        println("try again");
        break;
      }

    case '8':
      if (board[2][2] == 0) {
        board[2][2] = PLAYER;
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

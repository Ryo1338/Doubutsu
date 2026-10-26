final int SQUARESIZE = 100;
Board board;
KomaList komaList;
GameStatus gs; // 冒頭にGameStatusの変数を追加

void setup() {
  surface.setSize(6 * SQUARESIZE, 4 * SQUARESIZE);
  board = new Board();
  komaList = new KomaList();
  gs = new GameStatus(); // setup()内で初期化
}

void draw() {
  board.draw();
  komaList.draw();
}

// マウスがクリックされ、離されたときに呼び出されるメソッド
void mouseReleased() {
  int x = mouseX / SQUARESIZE;
  int y = mouseY / SQUARESIZE;
  board.select(x, y);
}

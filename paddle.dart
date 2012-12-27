part of brick_breaker;

class Paddle {

  Table table;

  num x;
  num y;
  num w;
  num h;

  bool rightDown = false;
  bool leftDown = false;

  Paddle(this.table, this.x, this.y, this.w, this.h) {
    draw();
    document.on.keyDown.add(onKeyDown);
    document.on.keyUp.add(onKeyUp);

  }

  void draw() {
    table.context.beginPath();
    table.context.rect(x, y, w, h);
    table.context.closePath();
    table.context.fill();
  }

  // Utilisation des touches de droite a gauche pour faire bouger la paddle
  void onKeyDown(event) {
    if (event.keyCode == 39) {
      rightDown = true;
    } else if (event.keyCode == 37) {
      leftDown = true;
    }
  }
  
  void onKeyUp(event) {
    if (event.keyCode == 39) {
      rightDown = false;
    } else if (event.keyCode == 37) {
      leftDown = false;
    }
  }
}

part of brick_breaker;

class Ball {

  Table table;

  num x;
  num y;
  num r;

 Ball(this.table, this.x, this.y, this.r) {
    draw();
  }

  void draw() {
    table.context.beginPath();
    table.context.arc(x, y, r, 0, PI*2, true);
    table.context.closePath();
    table.context.fill();
    }

}

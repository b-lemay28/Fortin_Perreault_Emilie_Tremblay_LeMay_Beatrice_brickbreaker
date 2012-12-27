library brick_breaker;

 
import 'dart:uri';
import 'dart:html';
import 'dart:isolate';
import 'dart:math';

part 'table.dart';
part 'ball.dart';
part 'paddle.dart';
part 'bricks.dart';

void main() {
  CanvasElement canvas = document.query('#canvas');
  Table table = new Table(canvas);
}


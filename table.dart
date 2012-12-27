part of brick_breaker;

class Table {
  // définition des variables
  final num x = 0;
  final num y = 0;
  final num ballX = 450;
  final num ballY = 450;
  final num ballRadius = 12;
  final num paddleWidth = 125;
  final num paddleHeight = 15;
  final num interval = 10;
  final num brickWidth = 50;
  final num brickHeight = 25; 


  CanvasElement canvas;
  CanvasRenderingContext2D context;

  num width;
  num height;
  double startBallX;
  double startBallY;
  num dx = 2;
  num dy = 4;

  
  Timer timer;
  Ball ball;
  Paddle paddleDown;

  /* création des briques une a une car plus simple pour la fonction qui va détuire les briques. 
   RANGÉE 1 */
  Brick brick;
  Brick brick1;
  Brick brick2;
  Brick brick3;
  Brick brick4;
  Brick brick5;
  Brick brick6;
  Brick brick7;
  Brick brick8;
  Brick brick9;
  Brick brick10;
  Brick brick11;
  Brick brick12;
  Brick brick13; 
  Brick brick14;
  Brick brick15;
  Brick brick16;
  // RANGÉE 2
  Brick brick17;
  Brick brick18;
  Brick brick19;
  Brick brick20;
  Brick brick21;
  Brick brick22;
  Brick brick23;
  Brick brick24;
  Brick brick25;
  Brick brick26;
  Brick brick27;
  Brick brick28;
  Brick brick29;
  Brick brick30; 
  Brick brick31;
  Brick brick32;
  Brick brick33;
// RANGÉE 3
  Brick brick34;
  Brick brick35;
  Brick brick36;
  Brick brick37;
  Brick brick38;
  Brick brick39;
  Brick brick40;
  Brick brick41;
  Brick brick42;
  Brick brick43;
  Brick brick44;
  Brick brick45;
  Brick brick46;
  Brick brick47; 
  Brick brick48;
  Brick brick49;
  Brick brick50; 
// RANGÉE 4
  Brick brick51;
  Brick brick52;
  Brick brick53;
  Brick brick54;
  Brick brick55;
  Brick brick56;
  Brick brick57;
  Brick brick58;
  Brick brick59;
  Brick brick60;
  Brick brick61;
  Brick brick62;
  Brick brick63;
  Brick brick64; 
  Brick brick65;
  Brick brick66;
  Brick brick67;
  
  Table(this.canvas) {
    context = canvas.getContext("2d");
    width = canvas.width;
    height = canvas.height;
    border();

    startBallX = width / 2;
    startBallY = height / 2;
    document.query('#play').on.click.add((e) {
      init();
    });

  }

  void init() {
    ball = new Ball(this, ballX, ballY, ballRadius);
    paddleDown = new Paddle(this, width/2, height-paddleHeight,
        paddleWidth, paddleHeight);
   
   
   
    timer = new Timer.repeating(interval, (t) => redraw());
  }


  void border() {
    context.beginPath();
    context.rect(x, y, width, height);
    context.closePath();
    context.stroke();
  }

  void clear() {
    context.clearRect(x, y, width, height);
    border();
  }


  void redraw() {
    clear();

    
    ball.draw();
    //mouvement de la paddle.
    if (paddleDown.rightDown) { paddleDown.x += 5;
    } else if (paddleDown.leftDown) paddleDown.x -= 5;
   
    // positions des briques sur la table. RANGÉE 1 
    brick = new Brick(this, 0, 0, brickWidth, brickHeight, ball);
    brick1 = new Brick(this, 55, 0, brickWidth, brickHeight, ball);
    brick2 = new Brick(this, 110, 0, brickWidth, brickHeight, ball);
    brick3 = new Brick(this, 165, 0, brickWidth, brickHeight, ball);
    brick4 = new Brick(this, 220, 0, brickWidth, brickHeight, ball);
    brick5 = new Brick(this, 276, 0, brickWidth, brickHeight, ball);
    brick6 = new Brick(this, 330, 0, brickWidth, brickHeight, ball);
    brick7 = new Brick(this, 385, 0, brickWidth, brickHeight, ball);
    brick8 = new Brick(this, 440, 0, brickWidth, brickHeight, ball);
    brick9 = new Brick(this, 495, 0, brickWidth, brickHeight, ball);
    brick10 = new Brick(this, 550, 0, brickWidth, brickHeight, ball);
    brick11 = new Brick(this, 605, 0, brickWidth, brickHeight, ball);
    brick12 = new Brick(this, 660, 0, brickWidth, brickHeight, ball);
    brick13 = new Brick(this, 715, 0, brickWidth, brickHeight, ball);
    brick14 = new Brick(this, 770, 0, brickWidth, brickHeight, ball);
    brick15 = new Brick(this, 825, 0, brickWidth, brickHeight, ball);
    brick16 = new Brick(this, 880, 0, brickWidth, brickHeight, ball);
    
    // positions des briques sur la table. RANGÉE 2
    brick17 = new Brick(this, 0, 30, brickWidth, brickHeight, ball);
    brick18 = new Brick(this, 55, 30, brickWidth, brickHeight, ball);
    brick19 = new Brick(this, 110, 30, brickWidth, brickHeight, ball);
    brick20 = new Brick(this, 165, 30, brickWidth, brickHeight, ball);
    brick21 = new Brick(this, 220, 30, brickWidth, brickHeight, ball);
    brick22 = new Brick(this, 276, 30, brickWidth, brickHeight, ball);
    brick23 = new Brick(this, 330, 30, brickWidth, brickHeight, ball);
    brick24 = new Brick(this, 385, 30, brickWidth, brickHeight, ball);
    brick25 = new Brick(this, 440, 30, brickWidth, brickHeight, ball);
    brick26 = new Brick(this, 495, 30, brickWidth, brickHeight, ball);
    brick27 = new Brick(this, 550, 30, brickWidth, brickHeight, ball);
    brick28 = new Brick(this, 605, 30, brickWidth, brickHeight, ball);
    brick29 = new Brick(this, 660, 30, brickWidth, brickHeight, ball);
    brick30 = new Brick(this, 715, 30, brickWidth, brickHeight, ball);
    brick31 = new Brick(this, 770, 30, brickWidth, brickHeight, ball);
    brick32 = new Brick(this, 825, 30, brickWidth, brickHeight, ball);
    brick33 = new Brick(this, 880, 30, brickWidth, brickHeight, ball);
    
    // position des briques sur la table. RANGÉE 3
    brick34 = new Brick(this, 0, 60, brickWidth, brickHeight, ball);
    brick35 = new Brick(this, 55, 60, brickWidth, brickHeight, ball);
    brick36 = new Brick(this, 110, 60, brickWidth, brickHeight, ball);
    brick37 = new Brick(this, 165, 60, brickWidth, brickHeight, ball);
    brick38 = new Brick(this, 220, 60, brickWidth, brickHeight, ball);
    brick39 = new Brick(this, 276, 60, brickWidth, brickHeight, ball);
    brick40 = new Brick(this, 330, 60, brickWidth, brickHeight, ball);
    brick41 = new Brick(this, 385, 60, brickWidth, brickHeight, ball);
    brick42 = new Brick(this, 440, 60, brickWidth, brickHeight, ball);
    brick43 = new Brick(this, 495, 60, brickWidth, brickHeight, ball);
    brick44 = new Brick(this, 550, 60, brickWidth, brickHeight, ball);
    brick45 = new Brick(this, 605, 60, brickWidth, brickHeight, ball);
    brick46 = new Brick(this, 660, 60, brickWidth, brickHeight, ball);
    brick47 = new Brick(this, 715, 60, brickWidth, brickHeight, ball);
    brick48 = new Brick(this, 770, 60, brickWidth, brickHeight, ball);
    brick49 = new Brick(this, 825, 60, brickWidth, brickHeight, ball);
    brick50 = new Brick(this, 880, 60, brickWidth, brickHeight, ball);
    
    // position des briques sur la table. RANGÉE 4
    brick51 = new Brick(this, 0, 90, brickWidth, brickHeight, ball);
    brick52 = new Brick(this, 55, 90, brickWidth, brickHeight, ball);
    brick53 = new Brick(this, 110, 90, brickWidth, brickHeight, ball);
    brick54 = new Brick(this, 165, 90, brickWidth, brickHeight, ball);
    brick55 = new Brick(this, 220, 90, brickWidth, brickHeight, ball);
    brick56 = new Brick(this, 276, 90, brickWidth, brickHeight, ball);
    brick57 = new Brick(this, 330, 90, brickWidth, brickHeight, ball);
    brick58 = new Brick(this, 385, 90, brickWidth, brickHeight, ball);
    brick59 = new Brick(this, 440, 90, brickWidth, brickHeight, ball);
    brick60 = new Brick(this, 495, 90, brickWidth, brickHeight, ball);
    brick61 = new Brick(this, 550, 90, brickWidth, brickHeight, ball);
    brick62 = new Brick(this, 605, 90, brickWidth, brickHeight, ball);
    brick63 = new Brick(this, 660, 90, brickWidth, brickHeight, ball);
    brick64 = new Brick(this, 715, 90, brickWidth, brickHeight, ball);
    brick65 = new Brick(this, 770, 90, brickWidth, brickHeight, ball);
    brick66 = new Brick(this, 825, 90, brickWidth, brickHeight, ball);
    brick67 = new Brick(this, 880, 90, brickWidth, brickHeight, ball);
    
    
    brick.draw();

    
    /* (si on fait des rangées avec une boucle, mais c'était trop compliqué lorsque venait le temps de détuire les briques.)
    
    brick2 = new Brick(this, 150, 150, brickWidth, brickHeight);
    
    for(int xx=0;xx<1000;xx=xx+60)
    
    brick = new Brick(this, xx, 0, brickWidth, brickHeight);
    brick = new Brick(this, xx-25, 27, brickWidth, brickHeight);
    brick = new Brick(this, xx, 54, brickWidth, brickHeight);
    brick = new Brick(this, xx-25, 81, brickWidth, brickHeight); */
   
    // fonction pour détuire les briques.
   
    if (ball.x > 0 && ball.x < 50)
    {
      if (ball.y > 0 && ball.y < 25)
     
      {

      }
    }
    
 

      paddleDown.draw();

       // limites gauche et droite de la balle. Quand elle tombe en bas, c'est la fin de l'animation.
       
      if (ball.x + dx > width || ball.x + dx < 0) {
      dx = -dx;
    }
    if (ball.y + dy < 0) {
      dy = -dy;  
    } else if (ball.y + dy > height) {

      if (ball.x > paddleDown.x && ball.x < paddleDown.x + paddleDown.w) {
        dy = -dy;
      } else {
        timer.cancel();
      }
    }
   
    ball.x += dx;
    ball.y += dy;
    
    
  }

  }



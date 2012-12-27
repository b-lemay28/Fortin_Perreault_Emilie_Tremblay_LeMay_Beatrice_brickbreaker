
part of brick_breaker;

class Brick 
{
  
  Table table;

  num x;
  num y;
  num w;
  num h;


  bool rightDown = false;
  bool leftDown = false;

  Brick(this.table, this.x, this.y, this.w, this.h, Ball uneBall) 
  {
    draw(); 
    
    /* Alpha représente la transparence et nous voulions mettre les bricks transparentes afin de créer l'explosion, mais les couleurs
    de la balle, de la paddle et des briques semblent liées pour une raison qui nous échappe.
    Si nous avions trouvez comment dissocier les couleurs, nous aurions donc changer la couleur de chaque brique lorsque la position
    de la balle = la position de la brique touchée. (Nous avons changé les couleurs de certaines sections afin de démontrer notre
    compréhension.)
    Puis, nous aurions utilisé une fonction qui faisait repartir la balle à partir de la position de la brique précédemment touchée. */
    
    if(uneBall.x > 0 && uneBall.x < 200)
    {  if(uneBall.y > 0 && uneBall.y < 120)
      {
     table.context.setFillColorRgb(100, 0, 0, 1);
      }
 
    }
  
    if(uneBall.x > 200 && uneBall.x < 400)
    {  if(uneBall.y > 0 && uneBall.y < 120)
      {
     table.context.setFillColorRgb(0, 0, 250);
      }
  }
    if(uneBall.x > 400 && uneBall.x < 600)
    {  if(uneBall.y > 0 && uneBall.y < 120)
      {
     table.context.setFillColorRgb(0, 400, 0);
      } 
  }
    if(uneBall.x > 600 && uneBall.x < 800)
    {  if(uneBall.y > 0 && uneBall.y < 120)
      {
     table.context.setFillColorRgb(100, 100, 100);
      } 
   
    }
    
  }
  
  void draw() 
  {
    table.context.beginPath();
    table.context.rect(x, y, w, h);
    table.context.closePath();
    table.context.fill();
  }


}

Juego juego;

void setup(){
 size(400,400); 
 juego=new Juego();
}

void draw(){
  juego.dibujar();
  
}

void mousePressed(){
  juego.mousePresionado();
}

Aventura aventura; 

void setup(){
 size(500,500); 
 aventura = new Aventura(); 
}

void draw(){
  background(240);
  aventura.dibujar();
}

void mouseClicked(){
  aventura.mousePresionado();
}

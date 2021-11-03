class Pantalla{  
  String mensaje;
  
  Pantalla(String mens){
    this.mensaje=mens;
  }
  
  void dibujar(){
    textSize(30);
    textAlign(CENTER);
    text(this.mensaje,width/2, height/2);
    
  }
}

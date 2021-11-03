class MiniJuego{
  boolean jugando;
  MiniJuego(){
   jugando=false; 
  }
  
  void dibujar(){
    
    if(estoyJugando()){
      //background(0);
      ellipse(random(50,width-50), random(50,height-50), 50,50);
    }
  }
  
  boolean estoyJugando(){
    return jugando==true;
  }
  
  void mousePresionado(){
   if(estoyJugando()){
     
   }
  }
  
  void iniciar(){
   jugando=true; 
  }
  
}

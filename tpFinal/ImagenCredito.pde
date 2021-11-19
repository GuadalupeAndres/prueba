class ImagenCredito {
  PImage imagen;
  int img, posx, posy, anc, alt;

  ImagenCredito(int img, int posx, int posy, int anc, int alt) {
    this.posx=posx;
    this.posy=posy;
    this.anc=anc;
    this.alt=alt;
    this.img=img;
    this.imagen=loadImage(img+".png");
  }

  void dibujar() {
    image(this.imagen,this.posx, this.posy, this.anc, this.alt);
  }
  
  void arriba(int velocidad){
    this.posy-=velocidad;
  }
  
   void abajo(int velocidad){
    this.posy+=velocidad;
  }
  
   void izquierda(int velocidad){
    this.posx-=velocidad;
  }
  
   void derecha(int velocidad){
    this.posx+=velocidad;
  }
  
  boolean detenerX(int posicion) {   
    return this.posx==posicion;
  }

  boolean detenerY(int posicion) {
    return this.posy==posicion;
  }
}

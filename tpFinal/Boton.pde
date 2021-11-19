class Boton {
  boolean area=false;
  boolean clickeado=false;
  int posx, posy, anc, alt;
  String accion;

  Boton() {
    this.posx=width/3;
    this.posy=height-70;
    this.anc=150;
    this.alt=50;
  }
  
  Boton(int posx){
    this.posx=posx;
    this.posy=height-70;
    this.anc=150;
    this.alt=50;
  }
  
  Boton(int posx, int alt){
    this.posx=posx;
    this.posy=height-70;
    this.anc=150;
    this.alt=alt;
  }

  void dibujar(String accion) {

    this.accion=accion;

    if (this.estaEnElArea()) {      
      if (this.mousePresionado()) {
        fill(#984A1D);
      } else {
        fill(#F5B857);
      }
    } else {
      fill(#F0D8B3);
    }
    noStroke();
    rect(posx, posy, anc, alt);

    fill(0);
    textSize(18);
    textAlign(CENTER);
    text(accion, posx+(150/2), posy+25);
  }

  boolean mousePresionado() {
    if (mousePressed) {
      this.clickeado=true;
    } else {
      this.clickeado=false;
    }
    return this.clickeado;
  }

  boolean estaEnElArea() {
    if (mouseX<posx+anc && mouseX>posx && mouseY<posy+alt && mouseY>posy) {
      area=true;
    } else {
      area=false;
    }
    return area;
  }
}

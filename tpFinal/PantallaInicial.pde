class PantallaInicial {
  PImage fondo;
  boolean botonIzquierda=false, botonDerecha=false;
  PFont fuente;
  Boton botonDerecho;
  Boton botonIzquierdo;

  PantallaInicial() {
    botonDerecho = new Boton(300);
    botonIzquierdo = new Boton(50, 50);
    fondo=loadImage("fondo0.jpeg");
    fuente= loadFont("ARBERKLEY-48.vlw");
  }

  void dibujar(String textito1, String textito2) {
    image(this.fondo, 0, 0, width, height);
    fill(0);
    textSize(35);
    textFont(this.fuente);
    text("La Isla del\nTesoro", width/2, height/3);    
    this.botonIzquierdo.dibujar(textito1);
    this.botonDerecho.dibujar(textito2);
  }

  boolean izquierda() {
    if (mouseX<50+150 && mouseX>50 && mouseY<height-70+50 && mouseY>height-70) {
      this.botonIzquierda=true;
    }
    return this.botonIzquierda;
  }

  boolean derecha() {
    if (mouseX<300+150 && mouseX>50 && mouseY<height-70+50 && mouseY>height-70) {
      this.botonDerecha=true;
    }
    return this.botonDerecha;
  }

  void mousePresionado() {
    this.botonDerecho.mousePresionado();
    this.botonIzquierdo.mousePresionado();
  }
}

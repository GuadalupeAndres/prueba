class Pantalla {
  Boton boton;
  Boton botonDerecho;
  Boton botonIzquierdo;
  Texto texto;
  int tipo, img, parteTexto;
  boolean botonIzquierda=false, botonDerecha=false; 
  PImage fondo, fondoPantalla;
  String accion1, accion2;

  Pantalla(int tipo, String accion1, String accion2, int img, int parteTexto) {    
    boton = new Boton();
    botonDerecho = new Boton(300);
    botonIzquierdo = new Boton (50, 50);
    texto = new Texto();
    this.tipo=tipo;
    this.accion1=accion1;
    this.accion2=accion2;
    this.img=img;
    this.parteTexto=parteTexto;
    fondo=loadImage("fondo26.jpeg");
    fondoPantalla=loadImage("fondo"+img+".jpeg");
    println("PP");
  }

  void dibujar() {
    image(fondoPantalla, 0, 0, width, height/2);
    image(fondo, 0, height/2, width, height/2);
    this.texto.dibujar(parteTexto);
    if (tipo==1) {
      this.dibujarUnBoton(accion1);
    } else {
      this.dibujarDosBotones(accion1, accion2);
    }
  }

  void mousePresionado() {
    this.boton.mousePresionado();
    this.botonDerecho.mousePresionado();
    this.botonIzquierdo.mousePresionado();
  }

  void dibujarUnBoton(String accion) {

    this.boton.dibujar(accion);
  }

  void dibujarDosBotones(String accion1, String accion2) {
    this.botonIzquierdo.dibujar(accion1);
    this.botonDerecho.dibujar(accion2);
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
}

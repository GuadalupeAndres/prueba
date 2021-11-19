class PantallaInicialHistoria {
  int tam= 20;
  int altu= 270;
  int cantImagenes=6;
  PImage [] objetos;
  PImage fondo, fondo1;
  Texto texto;
  boolean tesoro=false, mapa=false;


  PantallaInicialHistoria() {
    texto = new Texto();
    fondo = loadImage("fondo26.jpeg");
    fondo1 = loadImage("fondo1.jpeg");
    objetos = new PImage [cantImagenes];
    for (int g=0; g<cantImagenes; g++) {
      this.objetos[g]=loadImage("objetos"+g+".png"); 
      println("OO");
    }
  }

  void dibujar() {
    image(fondo1, 0, 0, width, height/2);
    image(fondo, 0, height/2, width, height/2);    
    this.dibujarObjetosInactivos();
    this.dibujarObjetosActivos();
    this.texto.dibujar(0);
  }

  void dibujarObjetosInactivos() {
    image(objetos[0], 0, 125, 125, 125);
    image(objetos[2], 125, 0, 125, 125);
    image(objetos[4], 300, 50, 200, 200);
  }

  void dibujarObjetosActivos() {
    if (mouseX>0 && mouseX<125 && mouseY>125 && mouseY<125+125) {
      image(objetos[1], 0, 125, 125, 125);
    } else if (mouseX>125 && mouseX<125+125 && mouseY>0 && mouseY<125) {
      image(objetos[3], 125, 0, 125, 125);
    } else if (mouseX>300 && mouseX<300+200 && mouseY>50 && mouseY<50+200) {
      image(objetos[5], 300, 50, 200, 200);
    }
  }

  boolean tesoro() {
    if (mouseX>300 && mouseX<300+200 && mouseY>50 && mouseY<50+200 ||mouseX>0 && mouseX<125 && mouseY>125 && mouseY<125+125 ) {
      this.tesoro=true;
    } else { 
      this.tesoro=false;
    }
    return this.tesoro;
  }

  boolean mapa() {
    if (mouseX>125 && mouseX<125+125 && mouseY>0 && mouseY<125) {
      this.mapa=true;
    } else {
      this.mapa=false;
    }
    return mapa;
  }
}

class Aventura {
  Historia historia;
  PantallaInicial pantallaInicial;
  Credito creditos;
  int pantallaActual=0;

  Aventura() {
    this.historia = new Historia();
    this.pantallaInicial = new PantallaInicial();
    this.creditos = new Credito();
  }

  void dibujar() {
    if (this.inicio()) {
      this.pantallaInicial.dibujar("Créditos", "Aventura");
    } else if (this.estoyEnAventura()) {
      this.historia.dibujar();     
      println("AV");
    } else if (this.estoyEnCreditos()) {
      this.creditos.dibujar();
    }
  }

  void mousePresionado() {
    this.pantallaInicial.mousePresionado();
    this.creditos.mousePresionado();

    if (this.inicio()) {
      if (this.pantallaInicial.izquierda()) {
        this.siguientePantalla();
      } else if (this.pantallaInicial.derecha()) {
        this.historia.iniciar();
        this.siguientePantalla();
        println("HI");//Borrar
      }
    } else if (this.estoyEnAventura()) {
      this.historia.mousePresionado();
      if(this.historia.volverInicio()==true){
      this.siguientePantalla();
      }
    }
  }

  void siguientePantalla() {
    if (this.inicio()) {
      if (this.pantallaInicial.izquierda()) {
        this.pantallaActual=2;
        this.estoyEnCreditos();
      } else if (this.pantallaInicial.derecha()) {
        this.pantallaActual=1;
        this.estoyEnAventura();
        println("AA");
      }
    } else if (this.estoyEnAventura()) {
      if (this.historia.volverInicio()==true) {
        this.pantallaActual=0;
        this.inicio();              
        println("INI");
      }
    }
  }

  boolean inicio() {
    return pantallaActual==0;
  }

  boolean estoyEnAventura() {
    return pantallaActual==1;
  }

  boolean estoyEnCreditos() {
    return pantallaActual==2;
  }
}

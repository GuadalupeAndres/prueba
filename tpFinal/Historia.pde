class Historia {
  Pantalla [] pantallas;
  int cantPantalla =26;
  int pantalla=1;
  boolean botonIzquierdo=false, botonDerecho=false, volverAEmpezar=false;
  PantallaInicialHistoria pantallaUno;

  Historia() {
    pantallaUno = new PantallaInicialHistoria();
    this.pantallas=new Pantalla [cantPantalla];
    this.pantallas[4]=new Pantalla(1, "Volver", "", 4, 4);
    this.pantallas[5]=new Pantalla(1, "Siguiente", "", 5, 5);
    this.pantallas[6]=new Pantalla(1, "Siguiente", "", 6, 6);
    this.pantallas[7]=new Pantalla(2, "Eliges enfrentarlos", "Eliges contarle a\n Livesey", 7, 7);
    this.pantallas[8]=new Pantalla(1, "Siguiente", "", 8, 8);
    this.pantallas[9]=new Pantalla(2, "Prefieres contarle\na Trelawny", "Eliges no contarle\na Trelawny", 7, 7);
    this.pantallas[10]=new Pantalla(2, "Eliges frenarte", "Eliges correr", 10, 10);
    this.pantallas[11]=new Pantalla(1, "Siguiente", "", 11, 11);
    this.pantallas[12]=new Pantalla(1, "Volver", "", 12, 12);
    this.pantallas[13]=new Pantalla(1, "Siguiente", "", 13, 13);
    this.pantallas[14]=new Pantalla(2, "Te unes a ellos", "Rechazas la oferta", 14, 14);
    this.pantallas[15]=new Pantalla(1, "Volver", "", 15, 15);
    this.pantallas[16]=new Pantalla(1, "Volver", "", 16, 16);
    this.pantallas[17]=new Pantalla(2, "Confias en el", "No confias", 17, 17);
    this.pantallas[18]=new Pantalla(1, "Siguiente", "", 18, 18);
    this.pantallas[19]=new Pantalla(2, "Vas al barco", "No vas al barco", 19, 19);
    this.pantallas[20]=new Pantalla(1, "Volver", "", 20, 20);
    this.pantallas[21]=new Pantalla(1, "Siguiente", "", 21, 21);
    this.pantallas[22]=new Pantalla(1, "Siguiente", "", 22, 22);
    this.pantallas[23]=new Pantalla(2, "No lo detienes", "Huyes con el", 23, 23);
    this.pantallas[24]=new Pantalla(1, "Volver", "", 24, 24);
    this.pantallas[25]=new Pantalla(1, "Volver", "", 25, 25);
  }

  void dibujar() {
    if (pantalla==1) {
      this.pantallaUno.dibujar();
    } else {
      this.pantallas[pantalla].dibujar();
    }
    println(pantalla);//Borrar
  }

  void mousePresionado() {
    for (int g=4; g<this.cantPantalla; g++) {
      this.pantallas[g].mousePresionado();
    }

    if (pantalla==1) {
      if (this.pantallaUno.tesoro()) {
        this.pasarSiguientePantalla(4);
      } else if (this.pantallaUno.mapa()) {
        this.pasarSiguientePantalla(5);
      }
    } else if (pantalla==4) {
      this.volverInicio();
    } else if (pantalla==5) {
      this.pasarSiguientePantalla(6);
    } else if (pantalla==6) {
      this.pasarSiguientePantalla(7);
    } else if (pantalla==7) {
      if (this.botonIzquierda(7)) {
        this.pasarSiguientePantalla(9);
      } else if (this.botonDerecha(7)) {
        this.pasarSiguientePantalla(8);
      }
    } else if (pantalla==8) {
      this.pasarSiguientePantalla(10);
    } else if (pantalla==9) {
      if (this.botonIzquierda(9)) {
        this.pasarSiguientePantalla(8);
      } else if (this.botonDerecha(9)) {
        this.pasarSiguientePantalla(13);
      }
    } else if (pantalla==10) {
      if (this.botonIzquierda(10)) {
        this.pasarSiguientePantalla(17);
      } else if (this.botonDerecha(10)) {
        this.pasarSiguientePantalla(11);
      }
    } else if (pantalla==11) {
      this.pasarSiguientePantalla(12);
    } else if (pantalla==12) {
      this.volverInicio();
    }
  }

  void pasarSiguientePantalla(int siguiente) {
    this.pantalla=siguiente;
  }

  boolean volverInicio() {
    return volverAEmpezar=true;
  }

  boolean botonIzquierda(int numeroPantallas) {
    if (this.pantallas[numeroPantallas].izquierda()) {
      this.botonIzquierdo=true;
    } else {
      this.botonIzquierdo=false;
    }
    return this.botonIzquierdo;
  }

  boolean botonDerecha(int numeroPantallas) {
    if (this.pantallas[numeroPantallas].derecha()) {
      this.botonDerecho=true;
    } else {
      this.botonDerecho=false;
    }
    return this.botonDerecho;
  }

  boolean iniciar() {
    this.volverAEmpezar=false;
    println("INIAV");//Borrar
    return pantalla==1;    
  }
}

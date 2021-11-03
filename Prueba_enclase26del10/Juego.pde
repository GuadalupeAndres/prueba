class Juego {
  int pantallaActual=0;
  Pantalla pantallaInicio, pantallaFinNoOk, pantallaFinOk;
  boolean gano;
  MiniJuego miniJuego;

  Juego() {
    pantallaActual=0;
    pantallaInicio=new Pantalla("Bienvenido\npresiona para jugar");
    pantallaFinOk=new Pantalla("Terminó\npresiona para jugar");
    pantallaFinNoOk=new Pantalla("Terminó\npresiona para jugar");
    miniJuego=new MiniJuego();
    gano=false;
  }

  void dibujar() {
    if (inicioDelJuego()) {
      pantallaInicio.dibujar();
    } else if (estoyJugando()) {
      miniJuego.dibujar();
    } else {
      if (gano) {
        pantallaFinOk.dibujar();
      } else {
        pantallaFinNoOk.dibujar();
      }
    }
  }

  boolean inicioDelJuego() {
    return pantallaActual==0;
  }

  boolean estoyJugando() {
    return pantallaActual==1;
  }

  void mousePresionado() {
    if (inicioDelJuego()) {
      cambiarSiguientePantalla();
    } else if (estoyJugando()) {
      miniJuego.iniciar();
    } else {
      if (gano) {
        cambiarSiguientePantalla();
      } else {
        cambiarSiguientePantalla();
      }
    }
  }

  void cambiarSiguientePantalla() {
    if (inicioDelJuego()) {
      pantallaActual=1;
    } else if (estoyJugando()) {
    } else {
      if (gano) {
        pantallaActual=0;
      } else {
        pantallaActual=0;
      }
    }
  }
}

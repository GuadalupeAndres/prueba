class Credito {
  ImagenCredito [] imagenCredito;
  int cantCredito=21, parte=1, tiempoDeImagen;

  Credito() {
    this.imagenCredito= new ImagenCredito [cantCredito]; 
    this.imagenCredito[0]= new ImagenCredito(0, 0, 0, width, height);
    this.imagenCredito[1]= new ImagenCredito(1, 0, 0, width, height);
    this.imagenCredito[2]= new ImagenCredito(2, 0, 400, 600, height);
    this.imagenCredito[3]= new ImagenCredito(3, 600, 0, 1000, height);
    this.imagenCredito[4]= new ImagenCredito(3, 1360, 0, 1500, height);
    this.imagenCredito[5]= new ImagenCredito(3, 1360, 0, 1500, height);
    this.imagenCredito[6]= new ImagenCredito(20, 350, 300, 100, 170);
    this.imagenCredito[7]= new ImagenCredito(6, 5, 60, 170, 260);
    this.imagenCredito[8]= new ImagenCredito(7, 320, 60, 170, 260);
    this.imagenCredito[9]= new ImagenCredito(8, 5, 60, 170, 260);
    this.imagenCredito[10]= new ImagenCredito(9, 320, 60, 170, 260);
    this.imagenCredito[11]= new ImagenCredito(10, 5, 60, 170, 260);
    this.imagenCredito[12]= new ImagenCredito(11, 320, 60, 170, 260);
    this.imagenCredito[13]= new ImagenCredito(12, 5, 60, 170, 260);
    this.imagenCredito[14]= new ImagenCredito(13, 320, 60, 170, 260);
    this.imagenCredito[15]= new ImagenCredito(14, 10, 60, 290, 260);
    this.imagenCredito[16]= new ImagenCredito(17, 10, 60, 290, 260);
    this.imagenCredito[17]= new ImagenCredito(4, 1360, 0, 600, height);
    this.imagenCredito[18]= new ImagenCredito(5, 0, 400, width, height);
    this.imagenCredito[19]= new ImagenCredito(18, 140, 145, 150, 150);
    this.imagenCredito[20]= new ImagenCredito(19, 0, 300, 360, 170);
  }

  void dibujar() {
    if (parte==1) {
      this.imagenCredito[0].dibujar();
      textAlign(CENTER);
      fill(0);
      textSize(60);
      text("La\nIsla del Tesoro", width/2, 150);
      if (frameCount%80==0) {
        this.imagenCredito[1].dibujar();
        this.parte=2;
      }
    } else if (parte==2) {
      this.imagenCredito[1].dibujar();
      this.imagenCredito[1].arriba(1);
      textAlign(RIGHT);
      textSize(25);
      fill(255);
      text("Directed by\n  CAPITÁN FLINT", 320, 150);
      this.imagenCredito[2].dibujar();
      this.imagenCredito[2].arriba(1);

      if (this.imagenCredito[2].detenerY(0)) {
        this.parte=3;
      }
    } else if (parte==3) {
      this.imagenCredito[2].dibujar();
      this.imagenCredito[2].detenerX(0);
      fill(0);
      textAlign(LEFT);
      textSize(20);
      text("Produced by\n  ROBERT L. STEVENSON", 50, 150);
      text("Executive producers\n  TRELAWNY\nDOCTOR LIVESEY\nJOHN SILVER", 300, 150);
      this.imagenCredito[2].izquierda(2);
      this.imagenCredito[3].dibujar();
      this.imagenCredito[3].izquierda(2);
      if (this.imagenCredito[2].detenerX(-600)) {
        this.parte=4;
      }
    } else if (parte==4) {
      this.imagenCredito[3].dibujar();
      this.imagenCredito[3].izquierda(2);
      fill(0);
      textAlign(LEFT);
      textSize(18);
      text("Original story by\n    JIM HAWKINS\n  DOCTOR LIVESEY", 20, 100);
      text("Character desing\n  SEÑOR ARROW", 200, 200);
      text("Character animation\n ABRAHAM GRAY", 300, 100);
      this.imagenCredito[4].dibujar();
      this.imagenCredito[4].izquierda(2);
      this.imagenCredito[6].dibujar();
      if (this.imagenCredito[3].detenerX(500)==true) {
        this.parte=5;
      }
    } else if (parte==5) {
      this.imagenCredito[3].dibujar();
      this.imagenCredito[3].izquierda(2);
      this.imagenCredito[4].dibujar();
      this.imagenCredito[4].izquierda(2);

      if (frameCount%90==0) {
        this.tiempoDeImagen++;
      }

      if (this.tiempoDeImagen==0) {
        this.imagenCredito[7].dibujar();
        this.imagenCredito[8].dibujar();
      } else if (this.tiempoDeImagen==1) {
        this.imagenCredito[9].dibujar();
        this.imagenCredito[10].dibujar();
      } else if (this.tiempoDeImagen==2) {
        this.imagenCredito[11].dibujar();
        this.imagenCredito[12].dibujar();
      } else if (this.tiempoDeImagen==3) {
        this.imagenCredito[13].dibujar();
        this.imagenCredito[14].dibujar();
      } else if (this.tiempoDeImagen==4) {
        this.imagenCredito[15].dibujar();
      } else if (this.tiempoDeImagen==5) {
        this.imagenCredito[16].dibujar();
      }

      this.imagenCredito[6].dibujar();

      this.imagenCredito[17].dibujar();
      this.imagenCredito[17].izquierda(2);
      
      if (this.imagenCredito[17].detenerX(-100)) {
        this.parte=6;
      }
    } else if (parte==6) {
      this.imagenCredito[17].dibujar();
      this.imagenCredito[17].arriba(2);
      this.imagenCredito[18].dibujar();
      this.imagenCredito[18].arriba(2);
      if (this.imagenCredito[18].detenerY(0)) {
        this.parte=7;
      }
    } else if (parte==7) {
      this.imagenCredito[18].dibujar();
      this.imagenCredito[19].dibujar();
      this.imagenCredito[20].dibujar();
      text("a ROBERT L. STEVENSON Production", width/2, 80);
    }
  }

  void mousePresionado() {
  }
}

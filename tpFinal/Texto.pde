class Texto {
  String [] linea;
  String [] palb={};
  String [] texto={};
  int tam= 20;
  int altu= 270;
  PFont fuente1;

  Texto() {
    this.fuente1= loadFont("BellMT-48.vlw");
    linea= loadStrings("historia.txt");   
    for (int i=0; i<linea.length; i++) {
      String [] texto= split(linea[i], "//");
      for (int f=0; f<texto.length; f++) {
        palb= append(palb, texto[f]);
      }
      println("TT");
    }
  }

  void dibujar(int parteTexto) {
    fill(0);
    textFont(fuente1);
    textSize(18);
    text(this.palb[parteTexto], tam, altu, width-26, height-26);
  }
}

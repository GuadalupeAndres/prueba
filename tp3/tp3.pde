int tam=12;

int grados1=138;
int grados2=-153;
int grados3=195;
int grados4=-185;

int cant1=100;
int cant2=230;
int cant3=45;
int cant4=300;

int incremento1=1;
int incremento2=3;
int incremento3=3;

int colorito=93;
color c1=240;
color c2=40;
color c3=160;


void setup() {
  size(400, 400);
}
void draw() {
  background(c3);

  fill(0, 255, 0);
  ellipse(370, 370, 25, 25);
  fill(0);
  text("R", 366, 375); 

  translate(200, 200);
  noFill();
  strokeWeight(1);  

  for (int A=0; A<cant1; A+=incremento1) {
    if (A%2==0) {
      stroke(c1);
    } else {
      stroke(c2);
    }

    rotate(radians(grados1));
    rect(130, 15, tam, tam);
  }

  for (int B=0; B<cant2; B+=incremento2) {
    if (B%2==0) {
      stroke(c1);
    } else {
      stroke(c2);
    }

    rotate(radians(grados2));
    rect(10, 90, tam, tam);
  }

  for (int C=0; C<cant3; C+=incremento1) {
    if (C%2==0) {
      stroke(c1);
    } else {
      stroke(c2);
    }
    rotate(radians(grados3));
    rect(5, 50, tam, tam);
  }

  for (int D=0; D<cant4; D+=incremento3) {
    if (D%2==0) {
      stroke(c1);
    } else {
      stroke(c2);
    }

    rotate(radians(grados4));
    rect(170, 0, tam, tam);
  }
}




void mouseClicked() {

  if (dist(mouseX, mouseY, 370, 370)<=25) {

    grados1=138;
    grados2=-153;
    grados3=195;
    grados4=-185;
    c3=160;
    tam=12;
  } else if (dist(mouseX, mouseY, 200, 200)<=100) {
    tam=round(random(8, 18));
  }
}

void mouseMoved() {

  grados1=round(map(mouseX, 0, width, 20, 360));
  grados3=round(map(mouseX, 0, width, 20, 360));
  grados2=round(map(mouseY, 0, height, 20, 360));
  grados4=round(map(mouseY, 0, height, 20, 360));
  
}

void keyPressed() {

  if (keyCode==LEFT) {
    c3=color(colorito, 7, 20);
    colorito=round(random(93, 250));
  } else if (keyCode==RIGHT) {
    c3=color(colorito, 7, 20);
    colorito=round(random(20, 93));
  }
}

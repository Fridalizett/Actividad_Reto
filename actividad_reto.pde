//variable
color fondo;
//variable de tipo clase 
Figura circulo;



void setup(){
  fondo = color(160);
  size(680,680);
  //creacion del objeto
  circulo = new Figura(color(51,255,51), 100, 100, 5, 100, 100);
}

//condiciones del programa y llamada a las funciones
void draw(){
  background(fondo);
  circulo.display();
  if((keyPressed == true) && (key =='a')){
    circulo.drive_a();
  }else if((keyPressed == true) && (key =='d')){
    circulo.drive_d();
  }else if((keyPressed == true) && (key =='w')){
    circulo.drive_w();
  }else if((keyPressed == true) && (key =='s')){
    circulo.drive_s();
  }
}

//definición de la clase
class Figura{
  color c;
  float xpos;
  float ypos;
  float xspeed;
  float yspeed;
  float tam1;
  float tam2;
  
  
  //contructor
  Figura(color tempC, float tempXpos, float tempYpos, float tempXspeed, float temptam1, float temptam2) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
    tam1 = temptam1;
    tam2 = temptam2;
  }
  
  //dibuja el círculo
  void display(){
  stroke(0);
  fill(c);
  rectMode(CENTER);
  ellipse(xpos,ypos,tam1,tam2);
  
  }
  
  //función mueve con la tecla a
  void drive_a (){
    xpos = xpos - xspeed;
    if (xpos < tam1/2) {
      xpos = tam1/2;
      display();
      fondo = color(204, 153, 255);
      display();
    }
  }
  
  //función mueve con la tecla d
  void drive_d (){
    xpos = xpos + xspeed;
    if (xpos > width-tam1/2) {
      xpos = width-tam1/2;
      fondo = color (255, 153, 204);
      display();
    }
  }
  
  //función mueve con la tecla w
  void drive_w (){
    ypos = ypos - xspeed;
    if (ypos < tam2/2) {
      ypos = tam2/2;
      fondo = color(255, 255, 51);
      display();
    }
  }
  
  //función mueve con la tecla s
  void drive_s (){
    ypos = ypos + xspeed;
    if (ypos > height-tam2/2) {
      ypos = height-tam2/2;
      fondo = color(153, 76, 0);
      display();
    }
  }
}

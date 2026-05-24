//tp2 programacion
//comision 2 
//Josefina Balda
//legajo 125517/7

PImage imgfondoauto; //cargar imagen
PImage imggtainicio;
PImage imgchicafondo;
PImage imgpersonajesfoto;
PImage gtafoto;
PImage pistolafoto;
PImage fondo;
PImage FINAL;
PImage fotoplata;
PImage fotopersonajess;
PImage fotodinero;
float x= 0; //posicion inicial de x horizontal
int linea = 150; //color de las lineas
int linea2 = 75;
int linea3 = 0;
float vx = 4; //velocidad
PFont fuente;
int texto=0;
int pantalla=0;
int segundos;
float transp=0;
float tono=0;
int y= -300;
int tiempoInicio = 0;
int tiempo=0;



void setup(){
  size(640,480);
  transp=0;
  background(150, 75, 0); 
  imgfondoauto = loadImage("data/fondoauto.png"); //cargar imagen 
  imggtainicio = loadImage("data/gtainicio.png.png");
  imgchicafondo= loadImage("data/chicafondo.png");
  imgpersonajesfoto=loadImage("data/personajesfoto.png.png");
  gtafoto=loadImage("data/gta.png");
  pistolafoto=loadImage("data/pistolas.png");
  FINAL=loadImage("data/final.png");
  fondo=loadImage("data/fondo.png");
  fotopersonajess=loadImage("data/fotopersonajess.png");
 fotoplata=loadImage("data/fotoplata.png");
 fotodinero=loadImage("data/fotodinero.png");
  x=26; //posicion inical de x
  vx=4; //velocidad
   fuente = loadFont("pricedown.ttf.vlw"); //cargar fuente
   textFont(fuente); //fuente del texto
  textAlign(CENTER, CENTER); //centrar texto
  text("pricedown.ttf.vlw",190,255); 
  text("start",190,255);
  }



void draw(){
  segundos=millis()/1000;
  segundos = (millis() - tiempoInicio) / 1000;
  transp+=0.1;

  //tiempo por pantalla
if (pantalla==0){
  pantalla0();
  }else if(segundos<20){
    pantalla=1;
  }else if(segundos<30){
    pantalla=2;
  }else if(segundos<40){
    pantalla=3;
  }else if(segundos<65){
    pantalla=4;
}else if(segundos<75){
  pantalla=5;
}
else{
  pantalla=6;
}

  
    
  if (pantalla == 0) {
    pantalla0();
  } else if (pantalla == 1) {
    pantalla1();
  } else if (pantalla == 2) {
    pantalla2();
  } else if (pantalla == 3) {
    pantalla3();
    } else if (pantalla == 4) {
    pantalla4();
    }else if(pantalla==5){
      pantalla5();
    }else if(pantalla==6){
      pantalla6();
  }
}
  
  
  
  void mousePressed() {//primer pantalla boton start
  if(pantalla==0){
  if ( mouseX > 130 && mouseX < 250 && mouseY > 230 && mouseY < 280) { //tocar boton
pantalla=1;
  }
}
 else if (pantalla == 6) {  //reiniciar pantallas apretando boton
  if (mouseX > 50 && mouseX < 250 && mouseY > 35 && mouseY < 125) { 
    pantalla = 0; //pantalla de inicio
    //reinicio
    y = -300;
    transp = 0;      
    texto = 0;       
    tono=0;
    tiempo=0;
    x=0;
    vx=4;
    linea=150;
    linea2=75;
    linea3=0;
    tiempoInicio = millis();  
  }
  }
  }



void keyPressed() { //primer pantalla para la pistola
if(pantalla==0){
  if (linea == 150) { //si la linea es del color del fondo
    linea=255; //cambia a amarillo
    linea2 = 255;
    linea3=0;
  }
    else{ //si la linea es amarilla
      linea=150; //vuelve al color del fondo
    linea2 = 75;
    linea3=0;
  }
}
if(pantalla==1){  //si estamos en la pantalla1 //segunda pantalla
  if(key=='a'){ //tocando la tecla a
    texto=1; //cambia el texto
  }
}
}

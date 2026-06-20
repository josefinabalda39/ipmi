//https://youtu.be/jbmkL80PAU8

//Josefina Blada
//Legajo 125517/7
//Comision 2
PImage imgReferencia;
float escalaLineas = 1.0; // Controla el grosor y tamaño dinámico de las capas
int MoverCuadrados=0;



void setup() {
  size(800, 400); 
  rectMode(CENTER);
  imgReferencia = loadImage("08.jpg"); 
}


void draw() {
  background(255); 
  image(imgReferencia, 0, 0, 400, 400); 
  
    
  stroke(180); 
  strokeWeight(2);
  line(400, 0, 400, 400); // Línea que divide
 
 escalaLineas = map(MoverCuadrados, 0, 200, 0.9, 1.2);
 
  dibujarCuadrados(600, 200, 184); 
}

float calcularDesplazamiento(int paso) {
  return paso * 4.8; 
}

// para reiniciar tocando una tecla
void keyPressed() {
  if (key == ' ') {
    reiniciar();
  }
}

void mouseMoved() {
MoverCuadrados = MoverCuadrados + 5; 
  if (MoverCuadrados > 200) {          
    MoverCuadrados = 0;                
  }
}

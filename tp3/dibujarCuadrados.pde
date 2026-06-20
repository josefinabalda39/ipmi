// Función con parámetros que no retorna valor
void dibujarCuadrados(float centroX, float centroY, float espacio) {
  // Ciclos for aninados 
  for (int fila = 0; fila < 2; fila++) {
    for (int col = 0; col < 2; col++) {
      
      float posX = (col == 0) ? (centroX - espacio/2) : (centroX + espacio/2); 
      float posY = (fila == 0) ? (centroY - espacio/2) : (centroY + espacio/2); 
      
     
      pushMatrix(); 
      
      // 1. Traslado el punto de ese cuadrado
      translate(posX, posY); 
      
      //aplico la rotación
      float angulo = 0;
      if (fila == 0 && col == 0) { angulo = 0; } 
      else if (fila == 0 && col == 1) { angulo = 1.5708; } // 90°
      else if (fila == 1 && col == 0) { angulo = -1.5708; } // -90°
      else { angulo = 3.1415; } // 180°
      
      rotate(angulo);
      
      // Dibujalas 9 capas
      float tam = 174; 
      for (int i = 0; i < 9; i++) {
        float tamDeEstaCapa = tam; 
        
        if (i == 8) {
        if (keyPressed && (key == 'b' || key == 'B')) { 
              fill(random(255)); 
            } else {
              fill(255);
            }
          stroke(15);
          strokeWeight(6.0 / escalaLineas);
          tamDeEstaCapa = tam * 0.7; 
      } else {
    noStroke();
    if (i % 2 == 0) { 
        fill(15); 
    } else { 
        if (keyPressed && (key == 'b' || key == 'B')) { 
            fill(random(255));
        }else{
            fill(255); 
        }
          }
        }
      
        // Función que retorna un valor 
        float desplazamiento = calcularDesplazamiento(i);
        rect(desplazamiento, -desplazamiento, tamDeEstaCapa, tamDeEstaCapa);
        tam -= 19.2 * escalaLineas; 
      }
      
      popMatrix(); 
    }
  }
}
void reiniciar(){
 MoverCuadrados=0;
}

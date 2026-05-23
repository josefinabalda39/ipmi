void pantalla0(){
   //primer pantalla
  background(150,75,0); 
  noStroke(); //sacar contorno
  fill(150,200); 
  rect(0,400,680,80); //rectangulo piso
  stroke(255,255,0);
  strokeWeight(4); //grosor
  line(0,400,width,400); //linea de arriba
  stroke(255); //color
  line(0, 430, 30, 430); //lineas de la calle
line(60, 430, 90, 430);
line(120, 430, 150, 430);
line(180, 430, 210, 430);
line(240, 430, 270, 430);
line(300, 430, 330, 430);
line(360, 430, 390, 430);
line(420, 430, 450, 430);
line(480, 430, 510, 430);
line(540, 430, 570, 430);
line(600, 430, 630, 430);

    stroke(90,45,10);{//color borde del boton
     fill(0); //color boton
  rect(130,230,120,50); //boton
    }
    
  fill(255);{ //color letras
    textAlign(CENTER,CENTER); //alineacion 
  textSize(35); //temaño
  text("start",190,255); //texto que aparece en el boton
  }
  image(imgfondoauto,x,80); //dibuja auto en movimiento
  image(imggtainicio,250,-30); //dibuja logo
  image(imgchicafondo,0,-30); //dibuja chica
  if (x > width) x = -imgfondoauto.width;
 x += 2;
  
    
      stroke(linea,linea2,linea3); //linea de la pistola
    strokeWeight(3); //grosor de la linea
  line(260, 70, 300, 70); //dibuja la linea
  if (pantalla == 0) { //para que desaparezca la linea
     } else if (pantalla == 1) {
    background(0);
     }
}
  
  
  void pantalla1(){
    //segunda pantalla
background(150, 75,0); 
tint(255, transp);  //aparece de a poco la imagen
transp+=1;
  image(imgpersonajesfoto, 20, 20); //dibujar imagen
  noTint();
   fill(255);{ //color letras
    textAlign(CENTER,CENTER); //alineacion 
    textSize(60); //temaño
   fill(255, transp);  //aparece de a poco el texto
   transp+=1;
if (texto==0){
  text("personajes principales",330,90);
}
textSize(20);
if (texto==1){
  text("Franklin Clinton\nUn gangster callejero nacido y \ncriado en la ciudad Los Santos \nen un barrio marginal inspirado en \nel actual Compton.",140,90);
  }
  if (texto==1){
    text("Trevor Philips También \nun gangster retirado \ncanadiense que vive en el \ndesierto y \nque posee un negocio \nde metanfetamina.",350,80);
  }
  if(texto==1){
    text("Michael Townley Un \ngangster profesional \nexperto en atracos a \nbancos retirado que vive \na costa del FBI en su servicio \nde protección de testigos \nen Los Santos.",530,90);
  }
   }
  }
  
  void pantalla2(){
     background(150,75,0);
image(gtafoto,0,20); //cargar foto
stroke(90,45,10); //borde
fill(0); 
rect(20,40,600,100); //rectangulo
textSize(20); 
fill(255);
  text("Un grupo de atracadores roba un banco, pero la huida sale mal \nuno muere y Michael es capturado por el FBI,\nque finge su muerte a cambio de su colaboración.",330,90);
  }

void pantalla3(){
  background(150,75,0);
  image(fotopersonajess,60,140);
  textSize(25); 
tono += 2;  //cambia de tono el texto
if (tono > 255) tono = 0;
fill(tono, tono,tono);
  text("Nueve años después, Michael vive retirado hasta que un problema con un  \nmafioso lo obliga a volver al crimen junto a Franklin.  \nEsto llama la atención de Trevor, su antiguo socio,  \nque descubre que está vivo y se une al grupo.",330,100); 
}



void pantalla4(){
  background(150,75,0);
  image(fotoplata,0,90);
  image(fotodinero,x,200);
  if (x > width) x = -fotodinero.width; //mover imagen constantemente
  x += 2;
  stroke(90,45,10); //borde
fill(0); 
rect(20,40,600,150); //rectangulo
textSize(20); 
fill(255);
  text("Luego un agente corrupto del FBI los extorsiona para cometer peligrosos robos,  \nlo que les genera enemigos poderosos por todos lados.  \nLa tensión explota cuando Trevor descubre que Michael le mintió sobre el pasado,  \npero aun así se unen para el golpe definitivo robar la reserva de oro del gobierno.",330,120); 
}


    
void pantalla5(){
   background(150,75,0);
image(pistolafoto,30,20); //imagen de fondo
stroke(90,45,10);
fill(0);
rect(20,100,600,300);
tono += 1;  //cambia de tono el texto
if (tono > 200) tono = 0;
fill(tono, tono/2, 0);
textSize(35);
text("Los tres protagonistas ejecutan golpes juntos\nmientras enfrentan enemigos poderosos.\nTrevor descubre que Brad esta muerto.\nAl final deciden no trabajar mas juntos \npero siguen siendo amigos.", 320, 250);
  }
  
  void pantalla6(){
    background(150,75,0);
    image(fondo,0,0);
   image(FINAL,30,y);
   y= y+3;  //se mueve la imagen en y
   if (y > 480) {
    y = -300;
   }
    stroke(90,45,10);
  fill(0);
  rect(20,50,130,60); //boton
  fill(255);
    textAlign(CENTER,CENTER); //alineacion 
  textSize(40); //temaño
  text("back",90,80);
}

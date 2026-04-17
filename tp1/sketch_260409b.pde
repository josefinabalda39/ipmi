//Josefina Balda 
//Comision 2
//tp1
//abril del 2026
  PImage img;
void setup(){
  size(800,400);
 img=loadImage("data/edificio_01.png");
  background(150,190,200); //fondo
  fill(100); //color del piso
  noStroke(); //sacar borde del piso
  rect(0,350,800,50); //piso
fill(160);  //color edificio de atras
rect(700,150,40,200); //edificio de atras a la izquierda
 fill(160);
 rect(420,200,30,150); //edificio de tras a la derecha
  rect(500,130,30,220); //edificio de atras
 fill(70); //color edificio
stroke(1); //borde del edificio
  rect(600,40,90,500); //edificio principal
  fill(120,80,40); //color
  rect(600,40,90,8); //parte de arriba del edificio
  fill(180);
  rect(600,32,90,8); //parte de arriba del edificio
  line(600,60,690,60); //lineas verticales
  line(600,80,690,80);
  line(600,100,690,100); 
  line(600,120,690,120);
  line(600,140,690,140);
  line(600,160,690,160);
  line(600,180,690,180);
  line(600,200,690,200);
  line(600,220,690,220);
  line(600,240,690,240);
  line(600,260,690,260);
  line(600,280,690,280);
  line(600,300,690,300);
  line(600,320,690,320);
  line(600,340,690,340);
  line(600,360,690,360);
  line(600,380,690,380);
  stroke(255, 220, 100, 200);
 stroke(255); //color lineas
  strokeWeight(1); //grosor de las lineas
  line(610,40,610,400); //lineas horizontales 
  line(630,40,630,400);
  line(650,40,650,400);
  line(670,40,670,400);
}
  void draw(){
  image(img,0,0,400,400);
}

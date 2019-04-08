void setup(){
  size(800, 600, P3D);
  background(153);
}
void setCS(){
  translate(width /2, height /2);
  scale(10,-10,10);
}
float tetag = PI/75; //Velocidade angular
float teta = 3*PI/2; //Começar do ponto mais em baixo do circulo
float R = 4; // Raio onde o centro da roda está
//Centro da roda
float CrodaX = 5;
float CrodaY = 0.5;
void draw(){
  setCS();
  camera(70,15,20,0,0,0,0,1,0); //camera(eyeX, eyeY, eyeZ, centerX, centerY, centerZ, upX, upY, upZ)
  background(255);
  CrodaX = R*cos(teta) + 5; //Definir posição da roda
  CrodaY = R*sin(teta) + 5;
  teta = (teta+tetag)%(2*PI);
  rotateX(-29*PI/90); //Rotação de 58
  point(5,1,0);
  line(0,0,0,10,0,0);//Linha AB em XY
  line(0,0,0,0,10,0);//Linha AC em XY
  line(0,10,0,10,10,0);//Linha CD em XY
  line(10,0,0,10,10,0);//Linha BD em XY
  circle(5, 5, 10);
  circle(CrodaX,CrodaY,2);
  rotateX(29*PI/90);
  line(5,4,6,5,4,0);
}

void setup(){
  size(800, 600, P3D);
  background(153);
}
void setCS(){
  translate(width /2, height /2);
  scale(10,-10,10);
  rotateX(-PI/3);
  rotateZ(-PI/3);
}
float tetag = PI/30; //Velocidade angular
float teta = 3*PI/2; //Começar do ponto mais em baixo do circulo
float R = 5; // Raio onde o centro da roda está
//Centro da roda
float CrodaX = 5;
float CrodaY = 0.5;
float sec;
void draw(){
  setCS();
  background(255);
  CrodaX = R*cos(teta) + 5; //Definir posição da roda
  CrodaY = R*sin(teta) + 5;
  teta = (teta+tetag)%(2*PI);//MoverTetas
  rotateX(radians(37));
  stroke(100,40,60);
  line(0,0,0,10,0,0);//Linha AB em XY
  line(0,0,0,0,10,0);//Linha AC em XY
  line(0,10,0,10,10,0);//Linha CD em XY
  line(10,0,0,10,10,0);//Linha BD em XY
  stroke(0,0,0);
  circle(5, 5, 10);
  stroke(255,0,0);
  pushMatrix();
  translate(CrodaX,CrodaY,2);
  rotateX(PI/2);
  rotateY(teta);
  rotateY(PI/2);
  circle(0,0,2);
  stroke(0,255,0);
  rotate(-teta);
  point(0,1,0);
  popMatrix();
  sec++;
}

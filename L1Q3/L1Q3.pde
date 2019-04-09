void setup(){
  size(800, 600, P3D);
  background(153);
}
void setCS(){
  translate(width /2, height /2);
  scale(10,-10,10);
  rotateX(-PI/3);//Mais fácil visualização
  rotateZ(-PI/3);
}
float tetag = PI/30; //Velocidade angular
float teta = 3*PI/2; //Começar do ponto mais em baixo do circulo
float R = 5; // Raio onde o centro da roda está
//Centro da roda
float CrodaX = 5;
float CrodaY = 0.5;
void draw(){
  setCS();
  background(255);
  //Definir posição do centro da roda
  CrodaX = R*cos(teta) + 5;
  CrodaY = R*sin(teta) + 5;
  //Modificando teta para mudar posição da roda
  teta = (teta+tetag)%(2*PI);//Mover minhas Tetas
  rotateX(radians(37)); //Mudando o plano para ficar na posição pedida na questão
  stroke(100,40,60); //Mudando a cor das linhas do plano
  line(0,0,0,10,0,0);//Linha AB em XY
  line(0,0,0,0,10,0);//Linha AC em XY
  line(0,10,0,10,10,0);//Linha CD em XY
  line(10,0,0,10,10,0);//Linha BD em XY
  stroke(0,0,0);//Deixar a cor do circulo inscrito como preto
  circle(5, 5, 10);
  stroke(255,0,0);//Pintando a roda de vermelho
  pushMatrix(); //"Salvando" os objetos anteriores, para mecher isoladamente nos objetos a seguir
  translate(CrodaX,CrodaY,2);
  rotateX(PI/2); //Deixando a roda perpendicular ao plano
  rotateY(teta);//Fazendo a roda andar tangente ao circulo
  rotateY(PI/2);//Eu n sei explicar, deixa como comentario q tu entende.
  rotate(-teta);//rotaciona os pontos em torno da origem (que e o centro do circulo)
  circle(0,0,2);//Desenhar o Circulo da roda
  stroke(0,255,0);//Pintar o ponto de verde
  point(0,1,0);//Ponto para provar que a rotacao ocorre
  popMatrix();
}

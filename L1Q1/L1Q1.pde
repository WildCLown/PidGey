void setup(){
  frameRate(60);
  size(800, 600, P2D);
}
void setCS(){
  translate(width /2, height /2);
  scale(100,-100);
}
float sec = 0;
float W = (PI/120);
float xA = 1;
float yA = 0;
float teta = 0;
float teta2 = 0;
float Raio = 1;
void draw(){
  setCS();
  background(255);
  point(xA,yA);
  //Pontos para saber onde bate
  //point(1,0);
  //point(-2,0);
  if(teta <= PI){//Ida do ponto
    xA = Raio*cos(teta);
    yA = Raio*sin(teta);
    if(teta <= PI){
      sec++;
    }
    teta = W*sec;
    Raio = 1+ teta/PI;
  }else{ //Volta do ponto
    if(sec>0){
      sec--;
    }
      teta2 = W*sec;
      Raio = 1+ teta2/PI;
      xA = Raio*cos(teta2);
      yA = Raio*sin(teta2);
  }
}

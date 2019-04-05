void setup(){
  frameRate(60);
  size(800, 600, P2D);
}
void setCS(){
  translate(width /2, height /2);
  scale(10,-10);
}
float ombroX = 0; //Este ponto fica fixo
float ombroY = 10;
float cuX = 0; // Este fica fixo após 30°
float cuY = 6;
float HX = 0; // Este fará a rotação de 30° e de 60° ao mesmo tempo
float HY = 0;
float ROC = 4;
float RCH = 6;
float tetag = PI/720;
float alphag = PI/360;
float teta = 3*PI/2;
float teta2 = 3*PI/2;
float sec = 0;
void draw(){
  setCS();
  background(255);
  line(ombroX,ombroY,cuX,cuY);
  line(cuX,cuY,HX,HY);
  point(ombroX,ombroY);
  point(cuX,cuY);
  point(HX,HY);
  cuX = ROC*cos(teta) + ombroX;
  cuY = ROC*sin(teta) + ombroY;
  HX = RCH*cos(teta2) + cuX;
  HY = RCH*sin(teta2) + cuY;
  if(teta < (5*PI)/3){ //rodar cutuvelo E mão 
    teta += tetag;
    if(teta+tetag <= 2*PI){
      teta2 += tetag;
    }
  }
  if(teta2 < 2*PI){
    teta2 += alphag;
  }
  sec++;
}

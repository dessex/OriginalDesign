void setup(){
  
  size(1000,600);
  frameRate(100);

}
int x=0;
int y=200;
int z=700;
void draw(){
  background(197);
  fill(95,230,255);
  rect(0,0,1000,600);
  sun();
  fill(0,0,255);
  rect(0,400,1000,300);
  wave();
  cloud1();
  cloud2();
  sunBeam();
}

void wave(){
  noStroke();
  fill(0,0,255);
  multiWave();
  x=x+3;
  if (x>100){
  x=0;
  }
}

void multiWave(){
  ellipse(x-100,400,150,100);
   ellipse(x,400,150,100);
    ellipse(x+100,400,150,100);
     ellipse(x+200,400,150,100);
      ellipse(x+300,400,150,100);
       ellipse(x+400,400,150,100);
        ellipse(x+500,400,150,100);
         ellipse(x+600,400,150,100);
          ellipse(x+700,400,150,100);
           ellipse(x+800,400,150,100);
            ellipse(x+900,400,150,100);
             ellipse(x+1000,400,150,100);         
}

void cloud1(){
  fill(255,255,255);
  ellipse (y,100,50,50);
  ellipse (y+25,100,50,50);
  ellipse (y+50,100,50,50);
  ellipse (y+70,110,50,50);
  ellipse (y+50,120,50,50);
  ellipse (y+25,120,50,50);
  ellipse (y,120,50,50);
  ellipse (y-20,110,50,50);
  y=y+1;
  if (y>1100){
    y=0;
  }
}

void cloud2(){
  fill(255,255,255);
  ellipse (z,100,50,50);
  ellipse (z+25,100,50,50);
  ellipse (z+50,100,50,50);
  ellipse (z+70,110,50,50);
  ellipse (z+50,120,50,50);
  ellipse (z+25,120,50,50);
  ellipse (z,120,50,50);
  ellipse (z-20,110,50,50);
  z=z+1;
  if (z>1100){
    z=1;
  }
}

void sun(){
fill(248,252,0);
ellipse(800,300,300,300);
}

void sunBeam(){
fill(248,252,0);
quad(0,0,300,0,900,300,900,350);
quad(0,300,0,600,900,300,900,350);
}
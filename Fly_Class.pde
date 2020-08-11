class Fly {
  float bX, bY;
  float xbSpeed = 0.2;
  int xSpeed = 3; 
  int ySpeed = 3;
  float vinkel = 0; 
  int H = 599; 
  int W = 799;


  Fly() {
    positionX  = 810;
    positionY  = 250;
    vinkel     = 0;
  }

  void tegnbjerg(){
    fill(73,51,31);
    noStroke();
    triangle(280, 600, 580, 600, 430, 300);
    triangle(500, 360, 300, 500, 340, 550);
    triangle(500, 620, 600, 500, 398, 550);
    fill(255,255,255);
    triangle(470, 380, 398, 365, 430, 300);
    fill(7,111,1);
    ellipse(496,362,15,15);
  
    
}
  
  void tegnblimp(){
 
    fill(0,0,0);
   rect(bX-15,42,30,15);
   fill(255,230,0);
   ellipse(bX,30,70,40);
   fill(255,0,0);
   textSize(15);
   text("Beast",bX-17,35);
   
  }
 
  void tegnsky(){
  
    fill(255,255,255);
    ellipse(130,190,70,40);
    ellipse(140,190,70,60);
    ellipse(150,190, 70,50);
    
    ellipse(630,240,90,60);
    ellipse(640,240,90,80);
    ellipse(650,240, 90,70);
    
}

  void tegnsol(){

    fill(255,230,0);  
    ellipse(750,60,81,81);
    fill(0,0,0);
    rect(725,50,20,15);
    rect(755,50,20,15);
    rect(745,50,10,5);
    rect(775,50,15,5);
    rect(710,50,15,5);
    fill(80,1,1);
    arc(745, 80, 30, 30, 0, PI+QUARTER_PI, OPEN);
    fill(255,230,0);
    pushMatrix();
    translate(750,60);
    for (int i = 0; i<21; i++){
    triangle(-10,-40,10,-40,0, -50);
    rotate(0.1*PI);
    triangle(-10,-40,10,-40,0, -50);
    }
    popMatrix();
  }  
    
  void flyt() {
     positionX += xSpeed; 
     bX += xbSpeed;
}

  void sammenstod(){
  if (positionX > 410 && positionX < 460 && positionY > 300 ){ 
    xSpeed = 0;
    text("BOOOOOOOM", 350,500);
    text("Beklager, du crashede... Genstart for at prøve igen!", 150,100);
    fill(255,230,0);
    triangle(310,480,380,450,370,410); 
    triangle(300,430,380,440,370,480); 
    triangle(460,480,530,450,540,410); 
    triangle(470,430,550,440,540,480); 
    triangle(410,570,480,530,470,520); 
    triangle(400,510,480,520,470,560); 
}
  }

 
  void tegnFly() {
    fill(255,255,255);
    ellipse(positionX-5, positionY, 40, 8);
    fill(78,116,244);
    ellipse(positionX-7, positionY-8, 10, 20);
    ellipse(positionX-7, positionY+8, 10, 20);
    fill(255,0,0);
    ellipse(positionX-5, positionY, 50, 6);
    
    
    if (positionX + 10 > W) { 
      xSpeed *= -1; 
      positionX = W -10;
    } //Højre side af kassen
    if (positionX - 10 < 0) { 
      xSpeed *= -1; 
      positionX = 0 + 10; //Venstre side af kassen
    }
    if (positionY + 10 > H) { 
      ySpeed *= -1; 
      positionY = H - 10;
    } //Nederste del af kassen
    if (positionY - 10 < 0) { 
      ySpeed *= -1; 
      positionY = 0 + 10; //Øverste del af kassen
    }
  }
}

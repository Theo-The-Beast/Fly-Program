Fly f = new Fly();
float positionX, positionY;
boolean programstartet = false;

void setup() {
  size(810, 600);

}


void draw() {
 
  clear();
  fill(13,238,238);
  rect(-10,-10,820,610);
  fill(255,0,0);
  
   textSize(20);
  if(programstartet == false)
  text("Tryk på skærmen og tryk derefter på E for at starte",150,100);
  if(programstartet == false)
  text("Tryk O ↑ og tryk N ↓ ",300,200);
  
  
    f.tegnbjerg();
    f.tegnsky();
    if(programstartet == true)   
    f.tegnFly();
    f.flyt();
    f.sammenstod();
    f.tegnsol();
    f.tegnblimp();
    
    
    println(mouseX, mouseY);
  
  }


 void keyPressed() {
  if (key=='e') {
    programstartet = true;
  }
  
  if (key=='o') {
    positionY -= 10;
  }

if (key=='n') {
    positionY += 10;
  }
}

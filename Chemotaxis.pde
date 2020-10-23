Bacteria[] colony = new Bacteria[100];
 void setup()   
 {    
   size(300, 300);
   for(int i = 0; i < colony.length; i++) {
     colony[i] = new Bacteria();
   }
 }   
 void draw()   
 {    
   background(0);
   for(int i = 0; i < colony.length; i++) {
     colony[i].show();
     colony[i].move();
   }
 }
 class Bacteria
 {     
   int x, y, bacColor;
   Bacteria(){
      x = 150;
      y = 150;
      bacColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
   }
   void move(){
     x += (int)(Math.random() * 5) - 2;
     y += (int)(Math.random() * 5) - 2;
 } 
   void show(){
     fill(bacColor);
     stroke(bacColor);
     ellipse(x, y, 20, 20);  
   }
}

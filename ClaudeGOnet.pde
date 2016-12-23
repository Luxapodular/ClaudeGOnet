import java.awt.*;
import java.awt.image.BufferedImage;
import javax.imageio.ImageIO;
import java.awt.MouseInfo;
import java.awt.Point;
import java.awt.event.InputEvent;

Robot bot; 
Point mouse; 
ArrayList<int[]>  box;
ArrayList<int[]>  dick;
ArrayList<int[]>  face;
 

void setup() {
  
  // Create robot. 
  try {
    bot = new Robot();
  } catch (AWTException e) {
    println("Error creating robot.");
  }
  
  box = new ArrayList<int[]>(); 
  dick = new ArrayList<int[]>();
  face = new ArrayList<int[]>();
  makeDick();
  makeBox(); 
  makeFace(); 
}

void draw () {
  
}

void keyPressed() {
  
  println("keypressed");
  if (key == 'p') {
    firePattern(box);
  } else if (key == 'l') {
    firePattern(dick); 
  } else if (key == 'k') {
    firePattern(face);
  }
  
}

void fire() {   
  bot.mousePress(InputEvent.BUTTON1_MASK);
  myDelay(95);
  bot.mouseRelease(InputEvent.BUTTON1_MASK);

}

void move(int dx, int dy) {
  int distanceByStep = 5; // pixels 
  int steps = max(dx / distanceByStep, dy / distanceByStep);
  int mx = dx / steps;
  int my = dy / steps; 
  
  for (int i = 0; i < steps; i++) {
    
    mouse = MouseInfo.getPointerInfo().getLocation();
    int ox = mouse.x;
    int oy = mouse.y; 
    
    bot.mouseMove(ox + mx, oy + my); 
    myDelay(20);
  }
}
  
void myDelay(int ms) {
  int start = millis();
  
  while (millis() - start < ms) {
  }
}

void firePattern(ArrayList<int[]> list) {
  int dx; 
  int dy;
  
  myDelay(1000);
  
  for (int[] tup : list) {
    dx = int(tup[0] * 1.5);
    dy = int(tup[1] * 1.5); 
    myDelay(250);
    mouse = MouseInfo.getPointerInfo().getLocation();
    bot.mouseMove(mouse.x + dx, mouse.y + dy); 
    
    println(mouse.x, mouse.y);
    
    myDelay(300);
    fire(); 
    
  }
}
    
void makeDick() {
  // Left Nut
  dick.add(new int[] {0,0});
  dick.add(new int[] {-10,5});
  dick.add(new int[] {-8,5});
  dick.add(new int[] {-5,5});
  dick.add(new int[] {-3,5});
  dick.add(new int[] {-1,5});
  dick.add(new int[] {3,5});
  dick.add(new int[] {5,5});
  dick.add(new int[] {8,5});
  dick.add(new int[] {10,5});
  
  dick.add(new int[] {10,-5});
  dick.add(new int[] {8,-5});
  dick.add(new int[] {5,-5});
  dick.add(new int[] {3,-5});
  dick.add(new int[] {1,-5});
  dick.add(new int[] {3,-5});
  
  // Right Nut
  dick.add(new int[] {3,5});
  dick.add(new int[] {5,5});
  dick.add(new int[] {8,5});
  dick.add(new int[] {10,5});
  dick.add(new int[] {10,-5});
  dick.add(new int[] {8,-5});
  dick.add(new int[] {5,-5});
  dick.add(new int[] {3,-5});
  dick.add(new int[] {1,-5});
  dick.add(new int[] {-1,-5});
  dick.add(new int[] {-3,-5});
  dick.add(new int[] {-5,-5});
  dick.add(new int[] {-8,-5});
  dick.add(new int[] {-10,-5});
  
  // Shaft 
  
  dick.add(new int[] {0,-5});
  dick.add(new int[] {0,-5});
  dick.add(new int[] {0,-5});
  dick.add(new int[] {0,-5});
  dick.add(new int[] {0,-5});
  dick.add(new int[] {0,-5});
  dick.add(new int[] {-1,-5});
  dick.add(new int[] {-3,-5});
  dick.add(new int[] {-5,-5});
  dick.add(new int[] {-8,-5});
  dick.add(new int[] {-10,-5});
  dick.add(new int[] {-8,5});
  dick.add(new int[] {-5,5});
  dick.add(new int[] {-3,5});
  dick.add(new int[] {-1,5});
  dick.add(new int[] {0,5});
  dick.add(new int[] {0,5});
  dick.add(new int[] {0,5});
  dick.add(new int[] {0,5});
  dick.add(new int[] {0,5});
  dick.add(new int[] {0,5});
}

void makeBox() {
  for (int i=0; i<4; i++) {
    int x = 10; 
    int[] arr = new int[2]; 
    arr[0] = x; 
    arr[1] = 0; 
    box.add(arr);
  }
  
  for (int i=0; i<4; i++) {
    int x = 0;
    int y = 10; 
    int[] arr = new int[2]; 
    arr[0] = x; 
    arr[1] = y; 
    box.add(arr);
  }
  
  for (int i=0; i<4; i++) {
    int x = -10;
    int y = 0; 
    int[] arr = new int[2]; 
    arr[0] = x; 
    arr[1] = y; 
    box.add(arr);
  }
  
  for (int i=0; i<4; i++) {
    int x = 0;
    int y = -10; 
    int[] arr = new int[2]; 
    arr[0] = x; 
    arr[1] = y; 
    box.add(arr);
  }
}

void makeFace() { 
  face.add(new int[] {0,0});
  face.add(new int[] {-10,5});
  face.add(new int[] {-8,5});
  face.add(new int[] {-5,5});
  face.add(new int[] {-3,5});
  face.add(new int[] {-1,5});
  face.add(new int[] {1,5});
  face.add(new int[] {3,5});
  face.add(new int[] {5,5});
  face.add(new int[] {8,5});
  face.add(new int[] {10,5});
  face.add(new int[] {10,-5});
  face.add(new int[] {8,-5});
  face.add(new int[] {5,-5});
  face.add(new int[] {3,-5});
  face.add(new int[] {1,-5});
  face.add(new int[] {-1,-5});
  face.add(new int[] {-3,-5});
  face.add(new int[] {-5,-5});
  face.add(new int[] {-8,-5});
  face.add(new int[] {-10,-5});
  
  face.add(new int[] {-20,10});
  face.add(new int[] {-20,10});
  
}

  
  
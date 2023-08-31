import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
  
public void setup(){
    size(500,500);
    arduino = new Arduino(this, Arduino.list()[1], 57600);
    noStroke();
}

public void draw() {
  background(192);
  int y = arduino.analogRead(5);
  int a = 0;
  int b = 0;
  y=90-y;
  System.out.println(y);
  fill(255,255,255);
  //body
  ellipse(100,100+y,80,50);
  rect(120,100+y,20,100);
  ellipse(180,200+y,120,60);
  ellipse(250,200+y,20,20);
  //legs
  if(y < -50){
    a = 90;
    b = 90;
  } else {
    a = 70-y;
    b = 65-y;
  }
  rect(140,200+y,15,a);
  rect(160,200+y,15,b);
  rect(190,200+y,15,a);
  rect(210,200+y,15,b);
  //features
  ellipse(130,82+y,30,20);
  fill(0,0,0);
  ellipse(100,90+y,10,10);
  rect(68,110+y,20,2);
  System.out.println(a);
}

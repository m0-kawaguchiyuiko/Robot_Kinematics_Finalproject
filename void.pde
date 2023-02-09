void setup(){
  size(1200, 1200, P3D);
  camera(100, 150, 100, -80, 0, 0, 0, 0, -1);
  noStroke();  
}
 void mouseClicked()
{
  colorNumber++;
  if (colorNumber > 1)
{
   colorNumber = 0;
}
}
void draw(){
    lights();
  if (colorNumber == 0)
{
  background(#9CEAD4);
}
else
{
  background(#EA98E9);
}

  pushMatrix();
translate(-60, 0, 80);
fill(255,255,0);
sphere(50);
  popMatrix();
  //eye
   pushMatrix();
translate(-90, 40, 80);
 fill(0);
box(5,5,5);
  popMatrix();
   pushMatrix();
translate(-30, 40, 80);
 fill(0);
box(5,5,5);
  popMatrix();
  
  //mouth
  pushMatrix();
translate(-60, 50, 70);
 fill(#FAD647);
box(15,25,2.5);
  popMatrix();
  
  //blush
   pushMatrix();
translate(-90, 30, 60);
  if((key == 'h') || (key == 'H')){
 fill(#F5A6F4);
sphere(15);
}
  popMatrix();
   pushMatrix();
translate(-30, 30, 60);
  if((key == 'h') || (key == 'H')){
 fill(#F5A6F4);
sphere(15);
}
  popMatrix();
  
  //base
  rotateZ(radians(angle0));
  xyzAxis(20); //xyzAxis @ base
   pushMatrix();
  translate(0,0,baseH/2);
  fill(#FAD647);
  box(20,20,baseH);
   popMatrix();
   
      pushMatrix();
 translate(-120,0,baseH/2);
  fill(#FAD647);
  box(20,20,baseH);
  popMatrix();
  
  //1st link
   pushMatrix();
    angle += speed * angleDirection; 
if ((angle > 60)||(angle < 0))
angleDirection = - angleDirection;
  translate(20,0,20);
  rotateX(radians(angle));
  fill(#1EF5C8);
  box(arm1W,arm1D,arm1L);
   popMatrix();
   
    pushMatrix();
    angle += speed * angleDirection; 
if ((angle > 120)||(angle < 0))
angleDirection = - angleDirection;
  translate(-120-arm1W,0,20);
  rotateX(-radians(angle));
  fill(#1EF5C8);
  box(arm1W,arm1D,arm1L);
   popMatrix();
  
    //2nd link
  //go to 2nd joint
   pushMatrix();
   angle1 += speed1 * angleDirection1; 
if ((angle1 > 120)||(angle1 < 0))
angleDirection1 = - angleDirection1;
 translate(arm1W,0,-arm1L/10);  
  rotateX(radians(angle1)-90);
  //go to center of 2nd joint
  translate(arm1W,arm1D*sin(radians(angle)),arm1L*cos(radians(angle)));
  fill(175);
  box(arm2W,arm2D,arm2L);
  
  //3rd link
  // go to 3rd joint
 
  translate(0, 5, arm3L/40);
  angle2 += speed2 * angleDirection2; 
if ((angle2 > 90)||(angle2 < 0))
angleDirection2 = - angleDirection2;
  rotateY(radians(angle2));
  // go to center of 3rd joint
  translate(0, arm2D/2, arm2L/2);
  fill(255,255,0);
  box(arm3W,arm3D,arm3L);
  
   popMatrix();
   //2nd link
  //go to 2nd joint
    pushMatrix();
   angle1 += speed1 * angleDirection1; 
if ((angle1 > 120)||(angle1 < 0))
angleDirection1 = - angleDirection1;
 translate(-arm1W-60,-30,-arm1L/10);  
  rotateX(-radians(angle1)-270);
  //go to center of 2nd joint
  translate(-arm1W-60,-arm1D*sin(-radians(angle)),arm1L*cos(-radians(angle)));
  fill(175);
  box(arm2W,arm2D,arm2L);
  
  
  //3rd link
  // go to 3rd joint
 
  translate(0, 5, arm3L/40);
  angle2 += speed2 * angleDirection2; 
if ((angle2 > 90)||(angle2 < 0))
angleDirection2 = - angleDirection2;
  rotateY(-radians(angle2));
  // go to center of 3rd joint
  translate(0, arm2D/2, arm2L/2);
  fill(255,255,0);
  box(arm3W,arm3D,arm3L);
  
   popMatrix();

  
   

 
  //xyzAxis @ Pr
  translate(0, 0, arm3L/2);
  xyzAxis(10);

}

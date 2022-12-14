/**
Professor: Hyesung Park
Student: Joseph Grados
Course: ITEC 2150
Date:11/8/2022
Purpose: An example of recursion in a animated java program.
**/
void setup(){
  size(800,800);
  noStroke();
  noLoop();
}

void draw(){
  drawCircle(height/2,280, 6);
}

void drawCircle(int y,int radius, int level){
  float tt = 126 * level/4.0;
  fill(tt);
  
  ellipse(width/2, y ,radius*2, radius*2);
  if(level > 1){
    level = level - 1;
    drawCircle(y-radius/2,radius/2, level);
    drawCircle(y + radius/2, radius/2,level);
  }
}

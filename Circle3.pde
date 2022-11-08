/**
Professor: Hyesung Park
Student: Joseph Grados
Course: ITEC 2140
Date:11/7/2022
Purpose: An example of recursion in a animated java program.
**/
void setup(){
  size(720,560);
  noStroke();
  noLoop();
}

void draw(){
  drawCircle(width/2,0, 280, 6);
}

void drawCircle(int x,int y, int radius, int level){
  float tt = 126 * level/4.0;
  fill(tt);
  
  ellipse(x,height/2, radius*1,radius*1);
  if(level > 1){
    level = level - 1;
    drawCircle(x - radius/2,0,radius/2,level);
    drawCircle(x + radius/2,0, radius/2,level);
    drawCircle(x - level/2,0,radius/2,level);
    //drawCircle(x + level/2, 0,radius/2,level);
  }
    
}

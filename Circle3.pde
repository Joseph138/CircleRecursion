 /**
Professor: Hyesung Park
Student: Joseph Grados
Course: ITEC 2140
Date:11/7/2022
Purpose: An example of recursion in a animated java program.
**/
void setup(){
  size(1000,1000);
  noStroke();
  noLoop();
}

void draw(){
  drawCircle(height/2, 280, 6);
}

void drawCircle(int y, int radius, int level){ // only includes y, radius, and level. 
  float tt = 126 * level/4.0;
  fill(tt);
  
    ellipse(width/2, y, radius*1,radius * 1);  
    ellipse(y, height/2, radius*1,radius * 1);  
    
    
  if(level > 1){
    level = level - 1;
    drawCircle(y - radius/2,radius/2,level);
    drawCircle(y + radius/2, radius/2,level);
   //drawCircle(x - level/2,0,radius/2,level);
    //drawCircle(x + level/2, 0,radius/2,level);
  }
    
}



class Atractor{
  float px, py, pr;
  float ipx, ipy;
  float theta = 0;
  
  Atractor(float p_x, float p_y){
    px = ipx = p_x;
    py = ipy = p_y;
  }
  
  void draw_Atractor(float pt){
    
    /* pt : thetaのこと。関数の外側で更新 */
    for(float i=0;i<400;i+=0.001){
        // draw
        fill(red, green, blue);
        noStroke();
        circle(px/100, py/100, 7); //100分の一スケール
        
        fill(255, 255, 255);
        rect(width/4, -height*3/8, 100, 50);
        textSize(22);
        fill(0, 0, 0);
        text("theta:" + str(pt), width/4, -height*3/8);
        
        // 更新
        px = px - (px*cos(pt) - py*sin(pt))/pr;
        py = py - (px*sin(pt) + py*cos(pt))/pr;
        pr = sqrt(sq(px) + sq(py));
    }
    
    px = ipx;
    py = ipy;
    pr = sqrt(sq(px) + sq(py));
  }
  
}

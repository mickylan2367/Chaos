
// bの値は手動で変えることにする
class Ikeda{
    
    float pa, pb; // parameter a, b
    float px, py, px_1, py_1;
    float pt;
    
    Ikeda(float a, float b, float p_x, float p_y){
        pa = a;
        pb = b;
        px_1 = px = p_x;
        py_1 = py = p_y;
    }
   
    
    void draw_Atractor(float scale, int r, int b, int g) {
        /*それぞれのパラメータを少しずつ変化させながら描写する*/
        stroke(r, g, b);
        strokeWeight(5);
        line(px_1*scale, py_1*scale, px*scale, py*scale);
        
        fill(r,g,b);
        noStroke();
        circle(px*scale, py*scale, 5); //100分の一スケール
                
        textSize(16);
        fill(255, 255, 255);
        text("a : "+str(pa), width/4, -height*6/20);
        text("b : "+str(pb), width/4, -height*7/20);
                
        // 更新
        px_1 = px;
        py_1 = py;
        pt = 0.4 - 6/(1 + sq(px) + sq(py));
        px = pa + pb*( px*cos(pt) - py*sin(pt));
        py = pb*(px_1*sin(pt) - py*cos(pt));
        print(str(scale * px), ",", str(scale * py) , "\n");
        print("compare to _1", str(px_1), str(px), ",", str(py_1), str(py) , "\n");
    }

}

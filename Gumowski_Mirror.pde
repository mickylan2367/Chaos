

//wikipedia より。
//グモウスキー・ミラの写像は多種多様な形状のストレンジアトラクタが現れることで知られる。グモウスキー・ミラの写像は美的な創作にも利用されてきた。
//特に、f2 と g1 から成る写像における鳥の羽のようなアトラクタは有名で、パラメータ (α, σ, μ) が (0.008, 0.05, −0.496) のときには3枚羽の翼が
//(0.009, 0.05, −0.801) のときには5枚羽の翼が描かれる。ミラはこれらを「神話の鳥 (mythic bird)」と名付けた。

class GumowskiMirror {
    float f;
    float px, py;
  
    // グモウスキー・ミラーの写像
    GumowskiMirror(float p_x, float p_y) {
        px = p_x;
        py = p_y;
    }
    
    void set_feather3(){ //羽が3枚の時の写像
        a = 0.008;
        b = 0.05;
        mu = -0.496;
    }
    
    void set_feather5(){ //羽が5枚の時の写像
        a = 0.009;
        b = 0.05;
        mu = -0.801;
    }
    
    void draw_Atractor(float a, float b, float mu, float scale) {
        /*それぞれのパラメータを少しずつ変化させながら描写する*/
    
        fill(red, green, blue);
        noStroke();
        circle(px*scale, py*scale, 7); //100分の一スケール
        
        textSize(16);
        fill(255, 255, 255);
        text("a : "+str(a), width/4, -height*6/20);
        text("b : "+str(b), width/4, -height*7/20);
        text("mu : "+str(mu), width/4, -height*8/20);
        
        // 更新
        float px_1 = px;
        px = py + a*( 1 - b* sq(py))*py + func(px, mu);
        py = -px_1 + func(px, mu);
    }


    float func(float x, float mu) {
        f = mu*x + 2*(1-mu)*sq(x)/(1+sq(x));
        return f;
    }
}

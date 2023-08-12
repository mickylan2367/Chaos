
float theta, a, b, mu;
int red, green, blue, recur=0;
int flag_r, flag_g, flag_b = 0;
Atractor atractor1 = new Atractor(400, 400);
//GumowskiMirror atractor2 = new GumowskiMirror(0.01, 0.01);

void setup(){
    //background(255,255,255);
    //background(0, 0, 0);
    size(800, 800);
    theta =1.55;
    red=59;
    green =175;
    blue = 117;
   
    //atractor2.set_feather5();
}

void draw(){
    background(0, 0, 0);
    translate(400, 400);
    fill(255, 255, 255);
    circle(0, 0, 10);
    
    atractor1.draw_Atractor(theta);
    //atractor2.draw_Atractor(a, b, mu, 19.0);
    
    theta += PI/50;
    
    makigai(0.001);
    hanabi();
    print(a, b, mu, "\n");
}


void hanabi(){
    /*
    色の変化を滑らかにする
    */
    
    if (flag_r == 1){
      red -= 1.0;
      if(red < 0){
        flag_r = 0;
      }
    }else if(red<0 || flag_r == 0){
      red += 1.0;
      if(red > 255){
        flag_r = 1;
      }
    }
   
   if(flag_g ==1){
      green -= 2;
      if(green < 0){
        flag_g = 0;
      }
   }else if(flag_g ==0){
      green += 3;
      if(green > 255){
        flag_g = 1;
      }
   }
   
   if(flag_b ==1){
      blue -= 3;
      if(blue < 0){
        flag_b = 0;
      }
    }else if(flag_b ==0){
      blue += 2;
      if(blue > 255){
        flag_b = 1;
      }
    }

}

void makigai(float scale){
  recur += scale;
}

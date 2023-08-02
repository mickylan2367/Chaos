
float x, y, r, theta;
int red, green, blue, recur=0;
int flag_r, flag_g, flag_b = 0;

void setup(){
  background(255,255,255);
  size(800, 800);
  x = y = 400;
  r = sqrt(sq(x) + sq(y));
  theta =0;
  red = green = blue = 0;
}

void draw(){
  //background(255, 255, 255);
  for(int i=0;i<200+recur;i++){
    fill(red, green, blue);
    noStroke();
    circle(x, y, 3);
    x = x - (x*cos(theta) - y*sin(theta))/r;
    y = y - (y*sin(theta) + y*cos(theta))/r;
    r = sqrt(sq(x) + sq(y));
  }
  
  x = y = 400;
  r = sqrt(sq(x) + sq(y));
  theta += PI/200;
  
  makigai();
  hanabi();
  print(red, flag_r);
}


void hanabi(){
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

void makigai(){
  recur += 1;
}

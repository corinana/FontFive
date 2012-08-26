/**
     A 'T' drawn by triangle matrices.
     Tan Lee Ken Corina 25/08/2012 
     a0077338@nus.edu.sg
  */ 


size(400,400);
background(255);
stroke(0);
fill(0);

int [] x = {120,280,170,230};
int [] y = {90,150,160,300};

int Y;
int X;

float grain_size = 2;
float dot_size = grain_size * .9;
smooth();

int i;
for(i = 0; i < 3; i++ ){
 for(X = x[i]; X < x[i+1]; X = X + int(grain_size)){
    for(Y = y[0]; Y < y[i+1]; Y = Y + int(grain_size)){
    //rect(X,  Y , grain_size, grain_size);
    float d = map(Y,y[0],y[i+1],dot_size,dot_size * 0.2);
    //rect( X , Y , d, d);
    ellipse( X  , Y  , d, d);
    }
  }
}




save("FontFive.jpg");

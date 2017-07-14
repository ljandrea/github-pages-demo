//variables
float cSize = 500;
float cVar = 3;
float bOs = 0;                      //whether or not circle needs to shrink or grow

//setup
void setup()
{
  size(500, 500);
  background(0, 0, 250);
}

//circle growing and shrinking
void draw()
{
  //conditionals
  if(cSize >= 500) {                    
    bOs = 0;                        //shrink --> 0
  }
  else if(cSize <= 0) {             //grow --> 1
    bOs = 1;
  }
  
  if(bOs == 1) {                    //circle growing
    cSize = cSize + cVar;
  }
  else if(bOs == 0) {               //circle shrinking
    cSize = cSize - cVar;
  }
  
  //drawing the circle
  background(0, 0, 250);
  ellipse(250, 250, cSize, cSize);
}
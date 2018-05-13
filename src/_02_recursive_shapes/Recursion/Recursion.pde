void setup(){
size(500,500);
fill(#0000FF);
recursiveRect(300,25,200,200,25);
fill(#FF0000);
recursiveEllipse(200,400,300,200,16);
}

void recursiveRect(int x, int y, int w, int h, int scale){
  rect(x,y,w,h);
  if(w > 0 && h > 0){
  recursiveRect(x+scale,y+scale,w-scale*2,h-scale*2,scale);
  //print(scale + " ");
  }
}

void recursiveEllipse(int x, int y, int w, int h, int scale){
  ellipse(x,y,w,h);
  if(w > 0 && h > 0){
   float ratio = (float)w/h;
   float ratioTwo = (float)h/w;
   int newWidth = (int)(w-(scale*ratio));
   int newHeight = (int)(h-(scale*ratioTwo));
  print(ratio + " " + ratioTwo + "\n");
  recursiveEllipse(x,y,newWidth,newHeight,scale);
  }
}
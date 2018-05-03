void setup(){
size(500,500);
}

void draw(){
fill(#0000FF);
recursiveRect(300,25,200,200,5);
fill(#FF0000);

}

void recursiveRect(int x, int y, int w, int h, int scale){
  rect(x,y,w,h);
  if(w > 0 || h > 0){
  recursiveRect(x+scale,y+scale,w-scale,h-scale,scale);
  print(scale + " ");
  }
}
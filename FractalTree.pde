private double fractionLength = .8; 
private int smallestBranch = 12; 
private double branchAngle = .6;  
private int w = 7;
public void setup() 
{   
  size(640,480);    
  noLoop(); 
  stroke(92, 52, 1);
  strokeWeight(w);
} 
public void draw() 
{   
  background(0);   
  line(320,480,320,380); 
  drawBranches(320,380,100,3*Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{     
  double angle1 = angle + branchAngle;
  double angle2 = angle - branchAngle;
  branchLength = branchLength * fractionLength;
  int endX1 = (int)(branchLength*Math.cos(angle1) + x);
  int endY1 = (int)(branchLength*Math.sin(angle1) + y);
  int endX2 = (int)(branchLength*Math.cos(angle2) + x);
  int endY2 = (int)(branchLength*Math.sin(angle2) + y);
  strokeWeight((int)(branchLength/smallestBranch));
  line(x, y, endX1, endY1);
  line(x,y,endX2, endY2);
  if(branchLength > smallestBranch){
    stroke(#0b3610);
    drawBranches(endX1, endY1,branchLength,angle1);
    stroke(#1e7529);
    drawBranches(endX2, endY2,branchLength,angle2);
  }
} 

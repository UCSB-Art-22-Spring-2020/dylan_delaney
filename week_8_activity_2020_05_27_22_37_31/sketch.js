


function setup() {
  createCanvas(800, 400);
  
  // dont do this 
  //rect( random(0,width), random(0,height), 20,20);
 //rect( random(0,width), random(0,height), 20,20);

  //for (int i = 0; i < 1000; i++) { //start counting at 0 and keep counting (looping) while i is less than 100
  //  noStroke();
  //  fill(random(0,255), random(0,255), random(0,255), 80); //random fill color
  //  rect( random(0,width), random(0,height), 20,20);// random rectangle position
  //  //println(i);

  //}
  
  //for (int i= 99; i>-1; i--){  // //start counting at 99 and keep counting (looping) while i is greater than -1
  //  println(i);
  //}
  
}

function draw() {
   for (i = 0; i < 1000; i++) { //start counting at 0 and keep counting (looping) while i is less than 100
    noStroke();
    fill(random(0,255), random(0,255), random(0,255), 80); //random fill color
    rect( random(0,width), random(0,height), random(10,100),random(10,100));// random rectangle position
    //println(i);

  }
  
}
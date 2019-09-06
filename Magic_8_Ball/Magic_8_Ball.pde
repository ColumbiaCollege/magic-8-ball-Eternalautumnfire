//Magic 8-ball Program. Image Credit: Garden Galactic by Engles Espinoza|metal posters - Displate,https://displate.com/displate/656806
//Jeremiah Wilson 05 Sept 2019

//Sets up an array of words that can appear in the magic 8-ball
String[] Magic = {"That result\n is unlikely", "The possibility\n is endless", "I don't appreciate\n your question", "No cookies for you", "Pet me,\n then ask again", "That's just wrong!"};

//"Acts like setting a variable" but stores the datatype "img" to be called/initialized later to load an image
PImage img;

//Settings for the program such as, text alingment, size, backroound, and fill.
void setup() {
  size(900, 900);
  
  //calls the image housed within the local data folder specified in the ""
  img = loadImage ("Space.jpg");
  textAlign(CENTER, CENTER);
  textSize(20);
  fill(0);
  noLoop();
}
//Redraws the 8-ball and begins cycling through possible answers to the question
void mousePressed() {
  redraw();
  
  //Draws te image in the background and stretches it to the window size
  image(img, 0, 0, 900, 900);
  fill(0);
  ellipse(450, 450, width/2, height/2);
  fill(200);
  ellipse(500, 275, 75, 25);
  fill(#1400FF);
  triangle(325, 350, 450, 575, 575, 350);
  fill(255);
  text(Magic[int (random(6))], width/2, 400);
  loop();
}
//reveals the answer to the question
void mouseReleased() {
  redraw();
  
  //Draws te image in the background and stretches it to the window size
  image(img, 0, 0, 900, 900);
  fill(0);
  
  //Places instructive text center, top of the draw window
  text("Ask another question.\n Hold to shake the 8-Ball.\n Release to reveal new asnwer.", width/2, 100);
  
  //"Opens" the 8-ball to reveal the answer
  ellipse(450, 450, width/2, height/2);
  fill(200);
  ellipse(500, 275, 75, 25);
  fill(#1400FF);
  triangle(325, 369, 450, 594, 575, 369);
  fill(255);
  
  //Pulls words at random from the array to be displayed
  text(Magic[int (random(6))], width/2, 400);
  noLoop();
}
//Sets up the draw window per setup settings, then draws the 8-ball
void draw() {
  
  //Draws te image in the background and stretches it to the window size
  image(img, 0, 0, 900, 900);
  fill(0);
  
  //Places instructive text center, top of the draw window
  text("Ask a question.\n Then click to reveal your answer.", width/2, 100);
  
  //Code for drawing the 8-ball
  ellipse(450, 450, width/2, height/2);
  fill(255);
  ellipse(450, 450, 250, 250);
  strokeWeight(6);
  ellipse(450, 425, 50, 50);
  ellipse(450, 475, 50, 52);
  fill(200);
  ellipse(500, 275, 75, 25);
}

//Magic 8-ball Program
//Jeremiah Wilson 05 Sept 2019

//Sets up an array of words that can appear in the magic 8-ball
String[] Magic = {"That result\n is unlikely", "The possibility\n is endless", "I don't appreciate\n your question", "No cookies for you", "Pet me,\n then ask again", "That's just wrong!"};

//Sets up
void setup() {
  size(900, 900);
  textAlign(CENTER, CENTER);
  textSize(20);
  background(255);
  fill(0);
  noLoop();
}

void mousePressed() {
  redraw();
  background(255);
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

void mouseReleased() {
  redraw();
  background(255);
  fill(0);
  text("Ask another question.\n Then click to reveal your answer.", width/2, 100);
  ellipse(450, 450, width/2, height/2);
  fill(200);
  ellipse(500, 275, 75, 25);
  fill(#1400FF);
  triangle(325, 350, 450, 575, 575, 350);
  fill(255);
  text(Magic[int (random(6))], width/2, 400);
  noLoop();
}
void draw() {
  background(255);
  fill(0);
  text("Ask a question.\n Then click to reveal your answer.", width/2, 100);
  ellipse(450, 450, width/2, height/2);
  fill(255);
  ellipse(450, 450, 250, 250);
  strokeWeight(6);
  ellipse(450, 425, 50, 50);
  ellipse(450, 475, 50, 52);
  fill(200);
  ellipse(500, 275, 75, 25);
}

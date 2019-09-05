//Magic 8-ball Program
//Jeremiah Wilson 05 Sept 2019

String[] Magic = {"That result\n is unlikely", "The possibility\n is endless", "I don't appreciate\n your question", "No cookies for you", "Pet me,\n then ask again"};

void setup() {
  size(900, 900);
  textAlign(CENTER, CENTER);
  textSize(20);
  frameRate(12);
  background(255);
  fill(0);
  text("Ask a question.", width/2, 50);
  text("Then click left mouse button to shake 8-ball", width/2, 100);
  noLoop();
}

void mousePressed() {
  redraw();
  background(255);
  fill(0);
  text("Release to reveal your answer", width/2, 100);
  ellipse(450, 450, width/2, height/2);
  fill(255);
  ellipse(500, 275, 75, 25);
  fill(#1400FF);
  triangle(325, 350, 450, 575, 575, 350);
  //textSize(18);
  fill(255);
  text(Magic[int (random(5))], width/2, 400);
  loop();
}

void mouseReleased() {
  redraw();
  background(255);
  fill(0);
  text("Ask another question.", width/2, 50);
  text("Then click left mouse button to shake 8-ball", width/2, 100);
  ellipse(450, 450, width/2, height/2);
  fill(255);
  ellipse(500, 275, 75, 25);
  fill(#1400FF);
  triangle(325, 350, 450, 575, 575, 350);
  textSize(18);
  fill(255);
  text(Magic[int (random(5))], width/2, 400);
  noLoop();
}
void draw() {
  //noLoop();
  background(255);
  fill(0);
  text("Release to reveal your answer", width/2, 100);
  //text("Ask a question.", width/2, 50);
  //text("Click left mouse button to shake 8-ball", width/2, 100);
  ellipse(450, 450, width/2, height/2);
  fill(255);
  ellipse(500, 275, 75, 25);
  fill(#1400FF);
  triangle(325, 350, 450, 575, 575, 350);
  textSize(18);
  fill(255);
  text(Magic[int (random(5))], width/2, 400);
  //redraw();
  //loop();
}

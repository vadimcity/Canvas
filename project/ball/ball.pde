import processing.sound.*;
Ball[] ballRed, ballBlue, ballGreen;
SoundFile blop;

float r = 0;
float  g = 0;
float  b = 0;
float op = 0;

void setup()
{
  size(600, 600);
  blop = new SoundFile(this, "blop.wav");

  ballRed = new Ball[1];
  ballBlue = new Ball[1];
  ballGreen = new Ball[1];
  for (int i=0; i< ballRed.length; i = i+1)
  {
    ballRed[i] = new Ball();
  }
  for (int i=0; i< ballGreen.length; i = i+1)
  {
    ballGreen[i] = new Ball();
  }
  for (int i=0; i< ballBlue.length; i = i+1)
  {
    ballBlue[i] = new Ball();
  }
}

void draw()
{

  background (r, g, b);
  noStroke();
  println(r, g, b);
  for (int i=0; i < ballRed.length; i=i+1)
  {
    fill(255, 0, 0);
    ballRed[i].draw();
    ballRed[i].move(); 
    r=r-2;
    if (dist(ballRed[i].position.x, ballRed[i].position.y, mouseX, mouseY) < ballRed[i].radius && r < 400)
    {
      r=r+6;
    } else if (r < 1 ) {
      r = 0;
    }
    if (dist(ballRed[i].position.x, ballRed[i].position.y, mouseX, mouseY) < ballRed[i].radius)
    {
      ballGreen[i].radius = random (33, 36);
      ballBlue[i].radius = random (33, 36);
    }
  }
  for (int i=0; i< ballGreen.length; i = i+1)
  {
    fill(0, 255, 0);
    ballGreen[i].draw();
    ballGreen[i].move();
    g=g-2;
    if (dist(ballGreen[i].position.x, ballGreen[i].position.y, mouseX, mouseY) < ballGreen[i].radius && g < 400)
    {
      g=g+6;
    } else if (g < 1) {
      g = 0;
    }
    if (dist(ballGreen[i].position.x, ballGreen[i].position.y, mouseX, mouseY) < ballGreen[i].radius )
    {
      ballRed[i].radius = random (33, 36);
      ballBlue[i].radius = random (33, 36);
    }
  }
  for (int i=0; i < ballBlue.length; i=i+1)
  {
    fill(0, 0, 255);
    ballBlue[i].draw();
    ballBlue[i].move();
    b=b-2;
    if (dist(ballBlue[i].position.x, ballBlue[i].position.y, mouseX, mouseY) < ballBlue[i].radius && b < 400)
    {
      b=b+6;
    } else if (b < 1) {
      b = 0;
    }
    if (dist(ballBlue[i].position.x, ballBlue[i].position.y, mouseX, mouseY) < ballBlue[i].radius)
    {
      ballRed[i].radius = random (33, 36);
      ballGreen[i].radius = random (33, 36);
    }
  }
}

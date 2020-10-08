class Ball {
  PVector position;
  PVector velocity;
  float radius;  // Radius of Ball.
  color colour;

  Ball()
  {
    position = new PVector(random(width/2), random (height/2));
    velocity = new PVector(random(-1, 1), random(-1, 1));
    radius = 35;
    colour   = color(255,255,255);
  }
  void draw()
  {
    //fill(colour);
    circle (position.x, position.y, radius * 2);
  }

  void move() {
    position.x = position.x + velocity.x;
    position.y = position.y + velocity.y;

    if (position.x - radius < 0 && velocity.x < 0)
    {
      // Escaping to the left, start moving right.
      velocity.x = -1*velocity.x;
      blop.play();
    } else if (position.x + radius > width && velocity.x > 0)
    {
      // Escaping to the right, start moving left.
      velocity.x = -1*velocity.x;
      blop.play();
    }

    if (position.y - radius < 0 && velocity.y < 0)
    {
      // Escaping upwards, start moving down.
      velocity.y = -1*velocity.y;
      blop.play();
    } else if (position.y + radius > height && velocity.y > 0)
    {
      // Escaping downwards, start moving up.
      velocity.y = -1*velocity.y;      
      blop.play();
    }
  }
}

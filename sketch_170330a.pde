
    


    int xspeed = 2;
    int yspeed = 1;
    float xpos;
    float ypos;

    void setup() {
      size(1000, 1000);

      fill(255, 150, 0);
      noStroke();

      smooth();

      xpos = 20;
      ypos = 20;
    }

    void draw() {
      background (0);

      xpos = xpos + xspeed;
      if (xpos+20 > 1000 || xpos-20 < 0) {
        xspeed *= -1;
      }

      ypos = ypos + yspeed;
      if (ypos+20 > 1000 || ypos-20 < 0) {
        yspeed *= -1;
      }

      rectMode(CENTER);
      rect(xpos, ypos, 40, 40);
    }

    void mousePressed() {
      fill(random(255), random(255), random(255));
    }
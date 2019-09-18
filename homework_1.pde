PFont f;
int x = 50;
float y = 6.25;
int leftDigitSet = -1;
int rightDigitSet = -1;
int enteredFloor = -1;
boolean isMousePressed = false;
color black = color(0, 0, 0);
color grey = color(31, 31, 31);
color red = color(255, 0, 0);
color buttonLed = color(0, 128, 255);
color white = color(255, 255, 255);

void setup() 
{
  background(127, 127, 127);
  size(1000, 500);
  f = createFont("Courier New", 16, true);

  // control panel
  fill(219, 228, 235);
  rect(x, y, 200, 487.5);

  // numeric display
  fill(black);
  rect(x + 50, y + 25, 100, 100);
}

void draw() 
{
  boolean handledMousePressed = false;
  
  textFont(f, 75);
  
  if (leftDigitSet < 0)
  {
    displayDigit(x, y, 0, -1, grey);
  }
  
  if (rightDigitSet < 0)
  {
    displayDigit(x, y, 50, -1, grey);
  }
  
  if (!mousePressed)
  {
    isMousePressed = false;
  }
    
  /////////////////////////////////////////////////////////////////////////////////////////////////////////

  // #0
  if ((mouseX >= x + 75 && mouseX <= x + 125) && (mouseY >= y + 331.25 && mouseY <= y + 381.25) && mousePressed) 
  {
    if (!isMousePressed)
    {
      isMousePressed = true;
      
      if ((leftDigitSet < 0) && (rightDigitSet > 0))
      {
        moveRightDigitToLeft(x, y, red);
        displayDigit(x, y, 50, 0, red);
        rightDigitSet = 0;      
      }
    }
    
    fill(buttonLed);
  }
  
  else
  {
    fill(white);
  }

  rect(x + 75, y + 331.25, 50, 50, 5);
  fill(black);
  text("0", x + 77.5, y + 381.25);

  // #1
  if ((mouseX >= x + 12.5 && mouseX <= x + 62.5) && (mouseY >= y + 143.75 && mouseY <= y + 193.75) && mousePressed) 
  {
    if (!isMousePressed)
    {
      isMousePressed = true;
      
      if (rightDigitSet < 0)
      {
        displayDigit(x, y, 50, 1, red);
        rightDigitSet = 1;
      }
      
      else if (leftDigitSet < 0)
      {
        moveRightDigitToLeft(x, y, red);
        displayDigit(x, y, 50, 1, red);
        rightDigitSet = 1;      
      }
    }
    
    fill(buttonLed);
  }
  
  else
  {
    fill(white);
  }

  rect(x + 12.5, y + 143.75, 50, 50, 5);
  fill(black);
  text("1", x + 15, y + 193.75);

  // #2
  if ((mouseX >= x + 75 && mouseX <= x + 125) && (mouseY >= y + 143.75 && mouseY <= y + 193.75) && mousePressed) 
  {
    if (!isMousePressed)
    {
      isMousePressed = true;
      
      if (rightDigitSet < 0)
      {
        displayDigit(x, y, 50, 2, red);
        rightDigitSet = 2;
      }
      
      else if (leftDigitSet < 0)
      {
        moveRightDigitToLeft(x, y, red);
        displayDigit(x, y, 50, 2, red);
        rightDigitSet = 2;      
      }
    }
    
    fill(buttonLed);
  }
  
  else
  {
    fill(white);
  }

  rect(x + 75, y + 143.75, 50, 50, 5);
  fill(black);
  text("2", x + 77.5, y + 193.75);

  // #3
  if ((mouseX >= x + 137.5 && mouseX <= x + 187.5) && (mouseY >= y + 143.75 && mouseY <= y + 193.75) && mousePressed) 
  {
    if (!isMousePressed)
    {
      isMousePressed = true;
      
      if (rightDigitSet < 0)
      {
        displayDigit(x, y, 50, 3, red);
        rightDigitSet = 3;
      }
      
      else if (leftDigitSet < 0)
      {
        moveRightDigitToLeft(x, y, red);
        displayDigit(x, y, 50, 3, red);
        rightDigitSet = 3;      
      }
    }

    fill(buttonLed);
  }
  
  else
  {
    fill(white);
  }

  rect(x + 137.5, y + 143.75, 50, 50, 5);
  fill(black);
  text("3", x + 140, y + 193.75);

  // #4
  if ((mouseX >= x + 12.5 && mouseX <= x + 62.5) && (mouseY >= y + 206.25 && mouseY <= y + 256.25) && mousePressed) 
  {
    if (!isMousePressed)
    {
      isMousePressed = true;
      
      if (rightDigitSet < 0)
      {
        displayDigit(x, y, 50, 4, red);
        rightDigitSet = 4;
      }
      
      else if (leftDigitSet < 0)
      {
        moveRightDigitToLeft(x, y, red);
        displayDigit(x, y, 50, 4, red);
        rightDigitSet = 4;      
      }
    }

    fill(buttonLed);
  }
  
  else
  {
    fill(white);
  }

  rect(x + 12.5, y + 206.25, 50, 50, 5);
  fill(black);
  text("4", x + 15, y + 256.25);

  // #5
  if ((mouseX >= x + 75 && mouseX <= x + 125) && (mouseY >= y + 206.25 && mouseY <= y + 256.25) && mousePressed) 
  {
    if (!isMousePressed)
    {
      isMousePressed = true;
      
      if (rightDigitSet < 0)
      {
        displayDigit(x, y, 50, 5, red);
        rightDigitSet = 5;
      }
      
      else if (leftDigitSet < 0)
      {
        moveRightDigitToLeft(x, y, red);
        displayDigit(x, y, 50, 5, red);
        rightDigitSet = 5;      
      }
    }

    fill(buttonLed);
  }
  
  else
  {
    fill(white);
  }

  rect(x + 75, y + 206.25, 50, 50, 5);
  fill(black);
  text("5", x + 77.5, y + 256.25);

  // #6
  if ((mouseX >= x + 137.5 && mouseX <= x + 187.5) && (mouseY >= y + 206.25 && mouseY <= y + 256.25) && mousePressed) 
  {
    if (!isMousePressed)
    {
      isMousePressed = true;
      
      if (rightDigitSet < 0)
      {
        displayDigit(x, y, 50, 6, red);
        rightDigitSet = 6;
      }
      
      else if (leftDigitSet < 0)
      {
        moveRightDigitToLeft(x, y, red);
        displayDigit(x, y, 50, 6, red);
        rightDigitSet = 6;      
      }
    }

    fill(buttonLed);
  }
  
  else
  {
    fill(white);
  }

  rect(x + 137.5, y + 206.25, 50, 50, 5);
  fill(black);
  text("6", x + 140, y + 256.25);

  // #7
  if ((mouseX >= x + 12.5 && mouseX <= x + 62.5) && (mouseY >= y + 268.75 && mouseY <= y + 318.75) && mousePressed) 
  {
    if (!isMousePressed)
    {
      isMousePressed = true;
      
      if (rightDigitSet < 0)
      {
        displayDigit(x, y, 50, 7, red);
        rightDigitSet = 7;
      }
      
      else if (leftDigitSet < 0)
      {
        moveRightDigitToLeft(x, y, red);
        displayDigit(x, y, 50, 7, red);
        rightDigitSet = 7;      
      }
    }

    fill(buttonLed);
  }
  
  else
  {
    fill(white);
  }

  rect(x + 12.5, y + 268.75, 50, 50, 5);
  fill(black);
  text("7", x + 15, y + 318.75);

  // #8
  if ((mouseX >= x + 75 && mouseX <= x + 125) && (mouseY >= y + 268.75 && mouseY <= y + 318.75) && mousePressed) 
  {
    if (!isMousePressed)
    {
      isMousePressed = true;
      
      if (rightDigitSet < 0)
      {
        displayDigit(x, y, 50, 8, red);
        rightDigitSet = 8;
      }
      
      else if (leftDigitSet < 0)
      {
        moveRightDigitToLeft(x, y, red);
        displayDigit(x, y, 50, 8, red);
        rightDigitSet = 8;      
      }
    }

    fill(buttonLed);
  }
  
  else
  {
    fill(white);
  }

  rect(x + 75, y + 268.75, 50, 50, 5);
  fill(black);
  text("8", x + 77.5, y + 318.75);

  // #9
  if ((mouseX >= x + 137.5 && mouseX <= x + 187.5) && (mouseY >= y + 268.75 && mouseY <= y + 318.75) && mousePressed) 
  {
    if (!isMousePressed)
    {
      isMousePressed = true;
      
      if (rightDigitSet < 0)
      {
        displayDigit(x, y, 50, 9, red);
        rightDigitSet = 9;
      }
      
      else if (leftDigitSet < 0)
      {
        moveRightDigitToLeft(x, y, red);
        displayDigit(x, y, 50, 9, red);
        rightDigitSet = 9;      
      }
    }

    fill(buttonLed);
  }
  
  else
  {
    fill(white);
  }

  rect(x + 137.5, y + 268.75, 50, 50, 5);
  fill(black);
  text("9", x + 140, y + 318.75);
    
  /////////////////////////////////////////////////////////////////////////////////////////////////////////

  // Clear
  if ((mouseX >= x + 12.5 && mouseX <= x + 62.5) && (mouseY >= y + 331.25 && mouseY <= y + 381.25) && mousePressed) 
  {
    fill(buttonLed);
    leftDigitSet = -1;
    rightDigitSet = -1;
  }
  
  else
  {
    fill(white);
  }

  rect(x + 12.5, y + 331.25, 50, 50, 5);
  fill(red);
  quad(x + 56.25, y + 333.75, x + 60, y + 337.5, x + 18.75, y + 378.75, x + 15, y + 375);
  quad(x + 18.75, y + 333.75, x + 15, y + 337.5, x + 56.25, y + 378.75, x + 60, y + 375);
  
  // Enter
  if ((mouseX >= x + 137.5 && mouseX <= x + 187.5) && (mouseY >= y + 331.25 && mouseY <= y + 381.25) && mousePressed) 
  {
    enteredFloor = rightDigitSet;
    if (leftDigitSet > 0)
    {
      enteredFloor += leftDigitSet * 10;
    }
    
    destinedFloor(enteredFloor);
    fill(buttonLed);
    leftDigitSet = -1;
    rightDigitSet = -1;
    handledMousePressed = true;
  }
  
  else
  {
    fill(white);
  }

  rect(x + 137.5, y + 331.25, 50, 50, 5);
  fill(0, 255, 0);
  quad(x + 143.75, y + 356.25, x + 140, y + 362.5, x + 156.25, y + 378.75, x + 156.25, y + 368.75);
  quad(x + 181.25, y + 333.75, x + 185, y + 337.5, x + 156.25, y + 378.75, x + 156.25, y + 368.75);
  
  /////////////////////////////////////////////////////////////////////////////////////////////////////////

  textFont(f, 100);

  // alarm button
  if ((mouseX >= x + 75 && mouseX <= x + 125) && (mouseY >= y + 406.25 && mouseY <= y + 456.25) && mousePressed) 
  {
    alarm();
    fill(buttonLed);
    handledMousePressed = true;
  }
  
  else
  {
    fill(white);
  }

  rect(x + 75, y + 406.25, 50, 50, 5);
  fill(black);
  arc(x + 100, y + 437.5, 25, 37.5, PI, TWO_PI);
  circle(x + 100, y + 418.75, 5);
  arc(x + 100, y + 443.75, 37.5, 25, PI, TWO_PI);
  circle(x + 100, y + 443.75, 10);

  /////////////////////////////////////////////////////////////////////////////////////////////////////////

  textFont(f, 50);

  // open door button
  if ((mouseX >= x + 12.5 && mouseX <= x + 62.5) && (mouseY >= y + 406.25 && mouseY <= y + 456.25) && mousePressed) 
  {
    openingDoor();
    fill(buttonLed);
    handledMousePressed = true;
  }
  
  else
  {
    fill(white);
  }

  rect(x + 12.5, y + 406.25, 50, 50, 5);
  fill(black);
  triangle(x + 31.25, y + 411.25, x + 15, y + 431.25, x + 31.25, y + 451.25);
  rect(x + 36.25, y + 411.25, 2.5, 40);
  triangle(x + 43.75, y + 411.25, x + 60, y + 431.25, x + 43.75, y + 451.25);  
  
  // close door button
  if ((mouseX >= x + 137.5 && mouseX <= x + 187.5) && (mouseY >= y + 406.25 && mouseY <= y + 456.25) && mousePressed) 
  {
    closingDoor();
    fill(buttonLed);
    handledMousePressed = true;
  }
  
  else
  {
    fill(white);
  }

  rect(x + 137.5, y + 406.25, 50, 50, 5);
  fill(black);
  triangle(x + 142.5, y + 411.25, x + 158.75, y + 431.25, x + 142.5, y + 451.25);
  rect(x + 161.25, y + 411.25, 2.5, 40);
  triangle(x + 182.5, y + 411.25, x + 166.25, y + 431.25, x + 182.5, y + 451.25);  
  
  if (!handledMousePressed)
  {
    clearText();
  }
}

void moveRightDigitToLeft(int xPosition, float yPosition, color c)
{
  if ((rightDigitSet >= 1) && (rightDigitSet <= 9))
  {
    displayDigit(xPosition, yPosition, 0, rightDigitSet, c);
  }

  leftDigitSet = rightDigitSet;
  rightDigitSet = -1;
  displayDigit(xPosition, yPosition, 50, -1, grey);
}

void displayDigit(int xPosition, float yPosition, int z, int digit, color c)
{
  if (digit >= 0)
  {
    fill(c);
  
    // segment A
    if ((digit == 0) || (digit == 2) || (digit == 3) || (digit == 5) || (digit == 6) || (digit == 7) || (digit == 8) || (digit == 9))
    {
      rect(xPosition + 60 + z, yPosition + 30, 30, 5, 5);
    }
    
    // segment B
    if ((digit == 0) || (digit == 1) || (digit == 2) || (digit == 3) || (digit == 4) || (digit == 7) || (digit == 8) || (digit == 9))
    {
      rect(xPosition + 90 + z, yPosition + 35, 5, 37.5, 5);
    }
    
    // segment C
    if ((digit == 0) || (digit == 1) || (digit == 3) || (digit == 4) || (digit == 5) || (digit == 6) || (digit == 7) || (digit == 8) || (digit == 9))
    {
      rect(xPosition + 90 + z, yPosition + 77.5, 5, 37.5, 5);
    }
    
    // segment D
    if ((digit == 0) || (digit == 2) || (digit == 3) || (digit == 5) || (digit == 6) || (digit == 8))
    {
      rect(xPosition + 60 + z, yPosition + 115, 30, 5, 5);
    }
    
    // segment E
    if ((digit == 0) || (digit == 2) || (digit == 6) || (digit == 8))
    {
      rect(xPosition + 55 + z, yPosition + 77.5, 5, 37.5, 5);
    }
    
    // segment F
    if ((digit == 0) || (digit == 4) || (digit == 5) || (digit == 6) || (digit == 8) || (digit == 9))
    {
      rect(xPosition + 55 + z, yPosition + 35, 5, 37.5, 5);
    }
    
    // segment G
    if ((digit == 2) || (digit == 3) || (digit == 4) || (digit == 5) || (digit == 6) || (digit == 8) || (digit == 9))
    {
      rect(xPosition + 60 + z, yPosition + 72.5, 30, 5, 5);
    }      
  }
  
  else
  {
    fill(c);
    
    // segment A
    rect(xPosition + 60 + z, yPosition + 30, 30, 5, 5);
  
    // segment B
    rect(xPosition + 90 + z, yPosition + 35, 5, 37.5, 5);
  
    // segment C
    rect(xPosition + 90 + z, yPosition + 77.5, 5, 37.5, 5);
  
    // segment D
    rect(xPosition + 60 + z, yPosition + 115, 30, 5, 5);
  
    // segment E
    rect(xPosition + 55 + z, yPosition + 77.5, 5, 37.5, 5);
  
    // segment F
    rect(xPosition + 55 + z, yPosition + 35, 5, 37.5, 5);
  
    // segment G
    rect(xPosition + 60 + z, yPosition + 72.5, 30, 5, 5);
  }
}

void destinedFloor(int floor)
{
  textFont(f, 50);
  String s = "";
  
  if (floor < 1)
  {
    s = "";
  }
  
  else
  {
    s = "\"Going to floor " + floor + "\"";
  }
  
  fill(0, 0, 0);
  text(s, x + 250, height / 2);
}

void alarm()
{
    fill(0, 0, 0);
    text("\"(ALARM)\"", x + 250, height / 2);
}

void openingDoor()
{
    fill(0, 0, 0);
    text("\"Doors are opening\"", x + 250, height / 2);
}

void closingDoor()
{
    fill(0, 0, 0);
    text("\"Doors are closing\"", x + 250, height / 2);  
}

void clearText()
{
  fill(127, 127, 127);
  noStroke();
  rect(x + 200, 0, width - (x + 200), height);
}

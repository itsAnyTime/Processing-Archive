// Inspired by Theo van Doesburg

void setup() 
{
  colorMode(HSB, 360, 1, 1, 1);

  // Fenster-Größe definieren (beste: 600x700)
  int sizeX = 600;
  int sizeY = 700;
  
  frameRate(60);
  size(sizeX, sizeY);
  background(255,0,1); //255
  noStroke();
  fill(0);
  fill(random(255),random(255),random(255));

  // Rahmen
  rect(0,0,sizeX,10);
  rect(0,0,10,sizeY);
  rect(0,sizeY-10,sizeX,10);
  rect(sizeX-10,0,10,sizeY);

  // Senkrechte Balken
  for (int i = 0; i < 21; i++)
  {    
      // Größe der Balken, Länge ist unterschiedlich
      float xAxis = 20;
      float yAxis = random(20, 120);
    
    if(width < 400 || height < 400)
    {
      // Größe der Balken, Länge ist unterschiedlich
      xAxis = xAxis/3;
      yAxis = yAxis/3;
    }

    // holt Random Werte für Rechteck-Position innerhalb der Fenstergröße, 
    // -Wert hält Abstand rechts und unten
    int x = int(random(0,width-190));
    int y = int(random(0,height-190));

    // zeichnet Rechtecke, 
    // +Wert hält Abstand oben und links
    rect(x+60, y+60, xAxis, yAxis); 
  }
  
  // Waagerechte Balken
  for (int i = 0; i < 20; i++)
  {
    int x = int(random(0,width-190));
    int y = int(random(0,height-190));

    float xAxis = random(20, 120);
    float yAxis = 20;

    rect(x+60, y+60, xAxis, yAxis);
  }
  
}

int a = 0;

void draw() 
{

}

// speichert Bilder // bzw. setzt Bild zurück
void keyReleased() {
  if (key == 's' || key == 'S') saveFrame("_##.png");
}

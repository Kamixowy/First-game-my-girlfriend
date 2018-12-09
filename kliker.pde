// Global variables
float radius = 50.0;
int delay = 16;
int Licznik = 0;
var xd = 200;
var xs = 200;
var xx = 380;
var xe = 200;
var xy = 5;


// Setup the Processing Canvas
void setup(){
  size( 400, 400 );
  strokeWeight( 3 );
 
  frameRate( 15 );
  PFont fontA = loadFont("courier");
  textFont(fontA, 20); 
}

// Main draw loop
void draw(){
  
  radius = radius + sin( frameCount / 4 );
      background(96, 97, 180);
	fill(255,10,159);
stroke(227, 170, 33);
	ellipse(xs, xx-(Licznik*20), 10, 10);
	
	
	
	stroke(254, 165, 255);
	fill(254, 165, 255);
	ellipse (xd, xe, 10, 10);

	if (xd > 400){
		xd=0;
	}
	xd = xd+xy;
	
	if ((xx-(Licznik*20) == xe) && (xs == xd)) {
		xs = 200;
		Licznik = 0;
		
	} 
	
	
	stroke(254, 165, 255);
	fill(254, 165, 255);
	ellipse (xd-100, xe-100, 10, 10);

	
	if ((xx-(Licznik*20) == xe-100) && (xs == xd-100)) {
		xs = 200;
		Licznik = 0;
		
	} 
		stroke(254, 165, 255);
	fill(254, 165, 255);
	ellipse (xd-180, xe-40, 10, 10);

	if ((xx-(Licznik*20) == xe-40) && (xs == xd-180)) {
		xs = 200;
		Licznik = 0;
		
	} 
	
		stroke(254, 165, 255);
	fill(254, 165, 255);
	ellipse (xd-120, xe+80, 10, 10);

	
	if ((xx-(Licznik*20) == xe+80) && (xs == xd-120)) {
		xs = 200;
		Licznik = 0;
		
	} 
	
	if (xx-(Licznik*20) == 20)  {
		
		println ('przegryw');
		Licznik = 0;
		xy = xy;
	}
	
	
	
}


void mousePressed(){

Licznik++;
 println(Licznik);
}


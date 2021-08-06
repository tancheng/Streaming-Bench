/* THE COLOUR FILE - DEFINES A COLOUR RED, GREEN, BLUE AND SPECIAL FEATURES IN A RAYTRACER */

#ifndef _Colour_H
#define _Colour_H

//The Colour Class
class Colour {
	//Define the RGB and special value of a colour
	double red, green, blue, special;
	/*
	Special Values:
	0-1 A range of how shiny the object is. 0 being not shiny and 1 being very shiny
		Note: Shiny refers to speclar reflection of the object as well as reflection and diffuse
    2-3 Refraction value
	4 Will draw a checkered pattern on the object
	*/

	public:
	//Constructor functions
	Colour ();

	Colour (double, double, double, double);

	//Method functions

	//Getters
	double getColourRed() { return red; }
	double getColourGreen() { return green; }
	double getColourBlue() { return blue; }
	double getColourSpecial() { return special; }

	//Setters
	double setColourRed(double redValue) { red = redValue; }
	double setColourGreen(double greenValue) { green = greenValue; }
	double setColourBlue(double blueValue) { blue = blueValue; }
	double setColourSpecial(double specialValue) { special = specialValue; }

	//Get the brightness of a colour
	double brightness() {
		return(red + green + blue)/3;
	}

	//Multiply a colour by a scalar value
	Colour ColourScalar(double scalar) {
		return Colour (red*scalar, green*scalar, blue*scalar, special);
	}

	//Add two colours together
	Colour ColourAdd(Colour colour) {
		return Colour (red + colour.getColourRed(), green + colour.getColourGreen(), blue + colour.getColourBlue(), special);
	}

	//Multiply two colours together
	Colour ColourMultiply(Colour colour) {
		return Colour (red*colour.getColourRed(), green*colour.getColourGreen(), blue*colour.getColourBlue(), special);
	}

	//Find the average of two colours
	Colour ColourAverage(Colour colour) {
		return Colour ((red + colour.getColourRed())/2, (green + colour.getColourGreen())/2, (blue + colour.getColourBlue())/2, special);
	}

	//Clip a colour to ensure its values remain valid (0 < Colour_Value > 1)
	Colour clip() {
		double alllight = red + green + blue;
		double excesslight = alllight - 3;
		if (excesslight > 0) {
			red = red + excesslight*(red/alllight);
			green = green + excesslight*(green/alllight);
			blue = blue + excesslight*(blue/alllight);
		}
		if (red > 1) {red = 1;}
		if (green > 1) {green = 1;}
		if (blue > 1) {blue = 1;}
		if (red < 0) {red = 0;}
		if (green < 0) {green = 0;}
		if (blue < 0) {blue = 0;}

		return Colour (red, green, blue, special);
	}
};

//The default colour is gray
Colour::Colour () {
	red = 0.5;
	green = 0.5;
	blue = 0.5;
}

//Define a colour using rgb values
Colour::Colour (double r, double g, double b, double s) {
	red = r;
	green = g;
	blue = b;
	special = s;
}

#endif

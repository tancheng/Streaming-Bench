/* THE COLOUR FILE - DEFINES A COLOUR RED, GREEN, BLUE AND SPECIAL FEATURES IN A RAYTRACER */

#ifndef _Color_H
#define _Color_H

//The Color Class
class Color {
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
	Color ();

	Color (double, double, double, double);

	//Method functions

	//Getters
	double getColorRed() { return red; }
	double getColorGreen() { return green; }
	double getColorBlue() { return blue; }
	double getColorSpecial() { return special; }

	//Setters
	double setColorRed(double redValue) { red = redValue; }
	double setColorGreen(double greenValue) { green = greenValue; }
	double setColorBlue(double blueValue) { blue = blueValue; }
	double setColorSpecial(double specialValue) { special = specialValue; }

	//Get the brightness of a colour
	double brightness() {
		return(red + green + blue)/3;
	}

	//Multiply a colour by a scalar value
	Color ColorScalar(double scalar) {
		return Color (red*scalar, green*scalar, blue*scalar, special);
	}

	//Add two colours together
	Color ColorAdd(Color colour) {
		return Color (red + colour.getColorRed(), green + colour.getColorGreen(), blue + colour.getColorBlue(), special);
	}

	//Multiply two colours together
	Color ColorMultiply(Color colour) {
		return Color (red*colour.getColorRed(), green*colour.getColorGreen(), blue*colour.getColorBlue(), special);
	}

	//Find the average of two colours
	Color ColorAverage(Color colour) {
		return Color ((red + colour.getColorRed())/2, (green + colour.getColorGreen())/2, (blue + colour.getColorBlue())/2, special);
	}

	//Clip a colour to ensure its values remain valid (0 < Color_Value > 1)
	Color clip() {
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

		return Color (red, green, blue, special);
	}
};

//The default colour is gray
Color::Color () {
	red = 0.5;
	green = 0.5;
	blue = 0.5;
}

//Define a colour using rgb values
Color::Color (double r, double g, double b, double s) {
	red = r;
	green = g;
	blue = b;
	special = s;
}

#endif

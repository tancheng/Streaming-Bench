/* THE LIGHT FILE - DEFINES A LIGHT POSITION AND COLOUR IN A RAYTRACER */

#ifndef _Light_H
#define _Light_H

//Includes
#include "Source.h"
#include "Vect.h"
#include "Color.h"

//The Light class 
class Light : public Source {
	//The position of the light source
	Vect position;
	//The color of the light
	Color color;

	public:
	//Constructor functions
	Light ();

	Light (Vect, Color);

	//Method functions

	//Getters
	virtual Vect getLightPosition () { return position; }
	virtual Color getLightColor () { return color; }

};

//Default Light
Light::Light () {
	//Positioned at the origin
	position = Vect(0,0,0);
	//Has white light
	color = Color(1,1,1, 0);
}

//Define a Light's position and color
Light::Light (Vect p, Color c) {
	position = p;
	color = c;
}

#endif

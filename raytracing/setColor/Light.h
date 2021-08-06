/* THE LIGHT FILE - DEFINES A LIGHT POSITION AND COLOUR IN A RAYTRACER */

#ifndef _Light_H
#define _Light_H

//Includes
#include "Source.h"
#include "Vect.h"
#include "Colour.h"

//The Light class 
class Light : public Source {
	//The position of the light source
	Vect position;
	//The colour of the light
	Colour colour;

	public:
	//Constructor functions
	Light ();

	Light (Vect, Colour);

	//Method functions

	//Getters
	virtual Vect getLightPosition () { return position; }
	virtual Colour getLightColour () { return colour; }

};

//Default Light
Light::Light () {
	//Positioned at the origin
	position = Vect(0,0,0);
	//Has white light
	colour = Colour(1,1,1, 0);
}

//Define a Light's position and colour
Light::Light (Vect p, Colour c) {
	position = p;
	colour = c;
}

#endif

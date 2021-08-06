/* THE RAY FILE - DEFINE A RAYS ORING AND DIRECTIN IN A RAYTRACER */

#ifndef _RAY_H
#define _RAY_H

//Includes
#include "Vect.h"

//The ray class
class Ray {
	//The origin vector of the Ray
	//The direction in which the ray is going
	Vect origin, direction;

	public:
	//Constructor functions
	Ray ();

	Ray (Vect, Vect);

	//Method functions

	//Getters
	Vect getRayOrigin () { return origin; }
	Vect getRayDirection () { return direction; }

};

//The default ray
Ray::Ray () {
	origin = Vect(0,0,0);
	direction = Vect(1,0,0);
}

//Define a ray 
Ray::Ray (Vect o, Vect d) {
	origin = o;
	direction = d;
}

#endif

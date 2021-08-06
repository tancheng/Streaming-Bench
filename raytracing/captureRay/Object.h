/* THE OBJECT FILE - USED AS A TEMPLATE FOR SPHERE AND PLANE OBJECTS */

#ifndef _OBJECT_H
#define _OBJECT_H

//Includes
#include "Ray.h"
#include "Vect.h"
#include "Colour.h"

//The Object class
class Object {
	public:
	//Constructor functions
	Object ();

	//Method functions
	//Getters
	virtual Colour getColour () { return Colour (0.0, 0.0, 0.0, 0); }

	//Get the normal at a point
	virtual Vect getNormalAt(Vect intersection_position) {
		return Vect (0, 0, 0);
	}

	//Used to find the intersection between an object and a ray 
	virtual double findIntersection(Ray ray) {
		return 0;
	}

};

Object::Object () {}

#endif

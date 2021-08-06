/* THE PLANE FILE - USED TO CREATE PLANES IN A RAYTRACER */

#ifndef _Plane_H
#define _Plane_H

//Includes
#include "math.h"
#include "Object.h"
#include "Vect.h"
#include "Colour.h"

//The plane class
class Plane : public Object {
	//A vector normal to the plane
	Vect normal;
	//The distance from the center of the scene to the plane
	double distance;
	//The colour of the plane
	Colour colour;

	public:
	//Constructor functions
	Plane ();

	Plane (Vect, double, Colour);

	//Method functions

	//Getters
	Vect getPlaneNormal () { return normal; }
	double getPlaneDistance () { return distance; }
	virtual Colour getColour () { return colour; }

	//Get the normal of the plane
	virtual Vect getNormalAt(Vect point) {
		return normal;
	}

	//Find the intersection between a ray and a plane
	virtual double findIntersection(Ray ray) {
		Vect ray_direction = ray.getRayDirection();

		double a = ray_direction.dotProduct(normal);

		//The case where the ray is parallel to the plane
		if (a == 0) {
			return -1;
		}
		//The case where the ray and the plane will intersect
		else {
			double b = normal.dotProduct(ray.getRayOrigin().vectAdd(normal.vectMult(distance).negative()));
			return -1*b/a;
		}
	}

};

//Set the default plane
Plane::Plane () {
	normal = Vect(1,0,0);
	distance = 0;
	colour = Colour(0.5,0.5,0.5, 0);
}

//Define a plane 
Plane::Plane (Vect normalValue, double distanceValue, Colour ColourValue) {
	normal = normalValue;
	distance = distanceValue;
	colour = ColourValue;
}

#endif

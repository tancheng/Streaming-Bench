/* FILE FOR A VECTOR - DEFINES THE POINT OF THE VECTOR AS WELL AS METHODS TO PERFORM OPERATIONS*/

#ifndef _VECT_H
#define _VECT_H

//Includes
#include "math.h"

//The Vect class
class Vect {
	//The x, y, z coordinates of the sphere

	public:
	//Constructor functions
	Vect ();

	Vect (double, double, double);

	double x, y, z;
	//Method functions

	//Getters
	inline double getVectX() { return x; }
	inline double getVectY() { return y; }
	inline double getVectZ() { return z; }

	//Calculate the magnitude of a vector
	inline double magnitude () {
		return sqrt((x*x) + (y*y) + (z*z));
	}

	//normalize a vector
	inline Vect normalize () {
		double magnitude = sqrt((x*x) + (y*y) + (z*z));
		return Vect (x/magnitude, y/magnitude, z/magnitude);
	}

	//Negate a vector
	inline Vect negative () {
		return Vect (-x, -y, -z);
	}

	//Calculate the dot product of two vectors
	inline double dotProduct(Vect v) {
		return x*v.getVectX() + y*v.getVectY() + z*v.getVectZ();
	}

	//Calculate the cross product of two vectors
	inline Vect crossProduct(Vect v) {
		return Vect (y*v.getVectZ() - z*v.getVectY(), z*v.getVectX() - x*v.getVectZ(), x*v.getVectY() - y*v.getVectX());
	}

	//Add two vectors together
	inline Vect vectAdd (Vect v) {
		return Vect (x + v.getVectX(), y + v.getVectY(), z + v.getVectZ());
	}

	//Multiply a vector by a scalar value
	inline Vect vectMult (double scalar) {
		return Vect (x*scalar, y*scalar, z*scalar);
	}
};

//Define a default vector
Vect::Vect () {
	x = 0;
	y = 0;
	z = 0;
}

//Define a vector 
Vect::Vect (double i, double j, double k) {
	x = i;
	y = j;
	z = k;
}

#endif

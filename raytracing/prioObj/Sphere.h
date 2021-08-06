/* FILE FOR THE SPHERE - DEFINE THE POSITION, RADIUS, AND COLOUR OF A SPHERE AND A RAYTRACER*/

#ifndef _SPHERE_H
#define _SPHERE_H

//Includes
#include "math.h"
#include "Object.h"
#include "Vect.h"
#include "Colour.h"

//The Sphere class
class Sphere : public Object {
	//The position of the center of the sphere
	Vect center;
	//The radius of the sphere
	double radius;
	//The colour of the sphere
	Colour colour;

	public:
	//Constructor functions
	Sphere ();

	Sphere (Vect, double, Colour);

	//Method functions

	//Getters
	Vect getSphereCenter () { return center; }
	double getSphereRadius () { return radius; }
	virtual Colour getColour () { return colour; }

	//Get the normal at a point
	virtual Vect getNormalAt(Vect point) {
		// normal always points away from the center of a sphere
		Vect normal_Vect = point.vectAdd(center.negative()).normalize();
		return normal_Vect;
	}

	//Find the intersection between the ray and the sphere
	virtual double findIntersection(Ray ray) {
		Vect ray_origin = ray.getRayOrigin();
		double ray_origin_x = ray_origin.getVectX();
		double ray_origin_y = ray_origin.getVectY();
		double ray_origin_z = ray_origin.getVectZ();

		Vect ray_direction = ray.getRayDirection();
		double ray_direction_x = ray_direction.getVectX();
		double ray_direction_y = ray_direction.getVectY();
		double ray_direction_z = ray_direction.getVectZ();

		Vect sphere_center = center;
		double sphere_center_x = sphere_center.getVectX();
		double sphere_center_y = sphere_center.getVectY();
		double sphere_center_z = sphere_center.getVectZ();

		double a = 1; // normalized
		double b = (2*(ray_origin_x - sphere_center_x)*ray_direction_x) + (2*(ray_origin_y - sphere_center_y)*ray_direction_y) + (2*(ray_origin_z - sphere_center_z)*ray_direction_z);
		double c = pow(ray_origin_x - sphere_center_x, 2) + pow(ray_origin_y - sphere_center_y, 2) + pow(ray_origin_z - sphere_center_z, 2) - (radius*radius);

		double discriminant = b*b - 4*c;

		if (discriminant > 0) {
			/// the ray intersects the sphere

			// the first root
			double root_1 = ((-1*b - sqrt(discriminant))/2) - 0.000001;

			if (root_1 > 0) {
				// the first root is the smallest positive root
				return root_1;
			}
			else {
				// the second root is the smallest positive root
				double root_2 = ((sqrt(discriminant) - b)/2) - 0.000001;
				return root_2;
			}
		}
		else {
			// the ray missed the sphere
			return -1;
		}
	}

};

//Define the default sphere
Sphere::Sphere () {
	center = Vect(0,0,0);
	radius = 1.0;
	colour = Colour(0.5,0.5,0.5, 0);
}

//Define a sphere 
Sphere::Sphere (Vect centerValue, double radiusValue, Colour ColourValue) {
	center = centerValue;
	radius = radiusValue;
	colour = ColourValue;
}

#endif

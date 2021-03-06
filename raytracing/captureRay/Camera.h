/* THE CAMERA FILE - DEFINES A CAMERA DIRECTION AND POSITON IN A RAYTRACER */

#ifndef _Camera_H
#define _Camera_H

//Includes
#include "Vect.h"

//The Camera class
class Camera {
	//campos - The camera position
	//camdir - The dirextion the camera is facing
	//camright, camdown - Used in camera ray calculations
	Vect campos, camdir, camright, camdown;

	public:
	//Constructor functions
	Camera ();

	Camera (Vect, Vect, Vect, Vect);

	//Method functions

	//Getters
	inline Vect getCameraPosition () { return campos; }
	inline Vect getCameraDirection () { return camdir; }
	inline Vect getCameraRight () { return camright; }
	inline Vect getCameraDown () { return camdown; }

};

//Sets the default camera
Camera::Camera () {
	campos = Vect(0,0,0);
	camdir = Vect(0,0,1);
	camright = Vect(0,0,0);
	camdown = Vect(0,0,0);
}

Camera::Camera (Vect pos, Vect dir, Vect right, Vect down) {
	campos = pos;
	camdir = dir;
	camright = right;
	camdown = down;
}

#endif

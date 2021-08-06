/* FILE USED AS A TEMPLATE FOR A LIGHT SOURCE */
#ifndef _SOURCE_H
#define _SOURCE_H

//Includes
#include "Vect.h"
#include "Color.h"

//The Source class
class Source {
	public:
	//Constructor functions
	Source();

	//Getters
	virtual Vect getLightPosition() {return Vect(0, 0, 0);}
	virtual Color getLightColor() {return Color(1, 1, 1, 0);}

};

Source::Source() {}

#endif

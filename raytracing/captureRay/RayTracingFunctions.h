/* FILE WITH RAYTRACING FUNCTIONS CONTAINS THE FUNCTION TO GET COLOUR AND WINNIND OBJECT INDEXES */

#ifndef RAYTRACINGFUNCTIONS_H
#define RAYTRACINGFUNCTIONS_H

//Includes
#include <stdio.h>

#include <vector>
#include "Colour.h"
#include "Vect.h"
#include "Object.h"
#include "Source.h"

//Function to return the winning index of all intersections
//The winning index is the index of the object that intersects with the ray first and is rendered ahead of others
int winningObjectIndex(std::vector<double> object_intersections) {
	// return the index of the winning intersection
	int index_of_minimum_value;

	//Case if there are no intersections
	if (object_intersections.size() == 0) {
		//Return -1 No intersections
		return -1;
	//Case if there is only one intersection
	} else if (object_intersections.size() == 1) {

		//Check that it is a valid intersection
		if (object_intersections.at(0) > 0) {
			//Retrun index 0
			return 0;
		}
		else {
			//Return -1 No valid intersections
			return -1;
		}
	//Case if there are more than one intersections
	} else {
		//First find the maximum value
		double max = 0;
		for (int i = 0; i < object_intersections.size(); i++) {
			if (max < object_intersections.at(i)) {
				max = object_intersections.at(i);
			}
		}

		//Starting from the maximum value find the minimum positive value
		if (max > 0) {
			// we only want positive intersections
			for (int index = 0; index < object_intersections.size(); index++) {
				if (object_intersections.at(index) > 0 && object_intersections.at(index) <= max) {
					max = object_intersections.at(index);
					index_of_minimum_value = index;
				}
			}

			return index_of_minimum_value;
		}
		else {
			//Return -1 No valid intersections
			return -1;
		}
	}
}

/******************************************************************************/

//Function to get the colour at an intersection
//Accounts for specular, reflection, diffusal and special values like checkered or translucent
Colour getColourAt(Vect intersection_position, Vect intersecting_ray_direction, std::vector<Object*> scene_objects, int index_of_winning_object, std::vector<Source*> light_sources, double accuracy, double ambientlight) {

	Colour winning_object_Colour = scene_objects.at(index_of_winning_object)->getColour();
	Vect winning_object_normal = scene_objects.at(index_of_winning_object)->getNormalAt(intersection_position);

	//Checkered/tile floor pattern if object has special of 4
	if (winning_object_Colour.getColourSpecial() == 4) {

		int square = (int)floor(intersection_position.getVectX()) + (int)floor(intersection_position.getVectZ());

		if ((square % 2) == 0) {
			//Black tile
			winning_object_Colour.setColourRed(0);
			winning_object_Colour.setColourGreen(0);
			winning_object_Colour.setColourBlue(0);
		}
		else {
			//White tile
			winning_object_Colour.setColourRed(1);
			winning_object_Colour.setColourGreen(1);
			winning_object_Colour.setColourRed(1);
		}
	}

	//The final Colour of the object
	Colour final_Colour = winning_object_Colour.ColourScalar(ambientlight);

    //The Object is translucent with a coefficient ranging from 0.1 to 0.9 subtract 2 from the special value
    if (winning_object_Colour.getColourSpecial() > 2 && winning_object_Colour.getColourSpecial() < 3){
        //Calculate the refraction coefficient
        double n = winning_object_Colour.getColourSpecial() - 2;

        //Calculate the direction of the Refracrtion ray
        double c1 = winning_object_normal.dotProduct(intersecting_ray_direction.negative());

        double c2 = sqrt(1 - (n*n) * ( 1 - (c1 * c1) ));

        Vect add1 = intersecting_ray_direction.vectMult(n);
        double scalar1 = (n * c1 - c2);
        Vect add2 = winning_object_normal.vectMult(scalar1);
        Vect refraction_direction = add1.vectAdd(add2);

        // Create the refraction ray from intersection point in direction of refraction

		//This is the ray inside of the object
        Ray refraction_ray (intersection_position, refraction_direction);

        //Vector to hold all intersections with the refraction_ray
        std::vector<double> refraction_intersections;

        //Get intersections and store them
        for (int refraction_index = 0; refraction_index < scene_objects.size(); refraction_index++){
            refraction_intersections.push_back(scene_objects.at(refraction_index)->findIntersection(refraction_ray));
        }

		//Because the ray is inside of the object the winning object intersection will be the exit point
        int index_of_winning_object_with_refraction = winningObjectIndex(refraction_intersections);

        //Get the position of the intersection at the other side of the object
        Vect intersection2 = intersection_position.vectAdd(refraction_direction.vectMult(refraction_intersections.at(index_of_winning_object_with_refraction)));

		//Get the normal vector at the exit point
        Vect winning_object_normal2 = scene_objects.at(index_of_winning_object_with_refraction)->getNormalAt(intersection2);

        //Calculate the direction of the refracrtion ray from the exit point
        double n2 = n;

        double c3 = winning_object_normal2.dotProduct(refraction_direction.negative());

        double c4 = sqrt(1 - (n2*n2) * ( 1 - (c3 * c3) ));

        Vect add3 = refraction_direction.vectMult(n2);
        double scalar2 = (n2 * c3 - c4);
        Vect add4 = winning_object_normal.vectMult(scalar2);
        Vect refraction_direction2 = add3.vectAdd(add4);

        // Create the refraction ray from intersection point in direction of refraction
        Ray refraction_ray2 (intersection2, refraction_direction2);

        //Vector to hold all intersections with the refraction_ray
        std::vector<double> refraction_intersections2;

        //Get intersections and store them
        for (int refraction_index2 = 0; refraction_index2 < scene_objects.size(); refraction_index2++){
            refraction_intersections2.push_back(scene_objects.at(refraction_index2)->findIntersection(refraction_ray2));
        }

        //Get the index of the winning object of the reflection intersections
		int index_of_winning_object_with_refraction2 = winningObjectIndex(refraction_intersections2);

		//If the ray didn't miss all objects
        if (index_of_winning_object_with_refraction2 != -1) {

			//Check the accuracy of the intersection
            if (refraction_intersections2.at(index_of_winning_object_with_refraction2) > accuracy) {

				//Get the location on the object of the intersection
                Vect refraction_intersection_position = intersection2.vectAdd(refraction_direction2.vectMult(refraction_intersections2.at(index_of_winning_object_with_refraction2)));
                Vect refraction_intersection_ray_direction = refraction_direction2;

				//Get the colour at the area of the object intersected
                Colour refraction_intersection_Colour = getColourAt(refraction_intersection_position, refraction_intersection_ray_direction, scene_objects, index_of_winning_object_with_refraction2, light_sources, accuracy, ambientlight);

				//Return the final colour to the original point
                final_Colour = final_Colour.ColourAdd(refraction_intersection_Colour.ColourScalar(n));

            }

        }



    }

	//If the object has special from 0-1 thenn that is its level of shininess
	if (winning_object_Colour.getColourSpecial() > 0 && winning_object_Colour.getColourSpecial() <= 2) {

		//Reflection from objects with specular intensity

		//Get the Direction of the reflection
		double dot1 = winning_object_normal.dotProduct(intersecting_ray_direction.negative());
		Vect scalar1 = winning_object_normal.vectMult(dot1);
		Vect add1 = scalar1.vectAdd(intersecting_ray_direction);
		Vect scalar2 = add1.vectMult(2);
		Vect add2 = intersecting_ray_direction.negative().vectAdd(scalar2);
		Vect reflection_direction = add2.normalize();

		//Create the reflection ray from the intersection point in the direction of the reflection
		Ray reflection_ray (intersection_position, reflection_direction);

		//Vector to hold all the intersections with the reflection_ray
		std::vector<double> reflection_intersections;

		//Get all the intersections and store them.
		for (int reflection_index = 0; reflection_index < scene_objects.size(); reflection_index++) {
			reflection_intersections.push_back(scene_objects.at(reflection_index)->findIntersection(reflection_ray));
		}

		//Get the index of the winning object of the reflection intersections
		int index_of_winning_object_with_reflection = winningObjectIndex(reflection_intersections);

		if (index_of_winning_object_with_reflection != -1) {
			// reflection ray missed everthing else if -1
			//Check against the accuray value
			if (reflection_intersections.at(index_of_winning_object_with_reflection) > accuracy) {
				// determine the position and direction at the point of intersection with the reflection ray
				// the ray only affects the color if it reflected off something

				Vect reflection_intersection_position = intersection_position.vectAdd(reflection_direction.vectMult(reflection_intersections.at(index_of_winning_object_with_reflection)));
				Vect reflection_intersection_ray_direction = reflection_direction;

				Colour reflection_intersection_Colour = getColourAt(reflection_intersection_position, reflection_intersection_ray_direction, scene_objects, index_of_winning_object_with_reflection, light_sources, accuracy, ambientlight);

				final_Colour = final_Colour.ColourAdd(reflection_intersection_Colour.ColourScalar(winning_object_Colour.getColourSpecial()));
			}
		}
	}


	//Loop Through Light Sources
	for (int light_index = 0; light_index < light_sources.size(); light_index++){
		Vect light_direction = light_sources.at(light_index)->getLightPosition().vectAdd(intersection_position.negative()).normalize();

		float cosine_angle = winning_object_normal.dotProduct(light_direction);

		if (cosine_angle > 0){
			//Test for shadows
			bool shadowed = false;

			Vect distance_to_light = light_sources.at(light_index)->getLightPosition().vectAdd(intersection_position.negative()).normalize();
			float distance_to_light_magnitude = distance_to_light.magnitude();

			//Creat a new ray for shadows and check intersections with object
			Ray shadow_ray (intersection_position, light_sources.at(light_index)->getLightPosition().vectAdd(intersection_position.negative()).normalize());

			//Vector to hold intersections with shadow_ray
			std::vector<double> secondary_intersections;

			//Loop through objects and find intersections with shadow ray
			//Ray point from intersection to light source. Any intersections means shadows
			for (int object_index = 0; object_index < scene_objects.size() && shadowed == false; object_index++) {
				secondary_intersections.push_back(scene_objects.at(object_index)->findIntersection(shadow_ray));
			}

			//Loop through new list of intersections with shadow ray setting shadowed if true.
			for (int c = 0; c < secondary_intersections.size(); c++) {
				if (secondary_intersections.at(c) > accuracy) {
					if (secondary_intersections.at(c) <= distance_to_light_magnitude) {
						shadowed = true;
					}
					break;
				}
			}
			//If the object is not in shadows
			if (shadowed == false) {
				final_Colour = final_Colour.ColourAdd(winning_object_Colour.ColourMultiply(light_sources.at(light_index)->getLightColour()).ColourScalar(cosine_angle));

				//If a Colour has special 0-1 then it has shininess
				if (winning_object_Colour.getColourSpecial() > 0 && winning_object_Colour.getColourSpecial() <= 1) {
					double dot1 = winning_object_normal.dotProduct(intersecting_ray_direction.negative());
					Vect scalar1 = winning_object_normal.vectMult(dot1);
					Vect add1 = scalar1.vectAdd(intersecting_ray_direction);
					Vect scalar2 = add1.vectMult(2);
					Vect add2 = intersecting_ray_direction.negative().vectAdd(scalar2);
					Vect reflection_direction = add2.normalize();

					//Caluclate the specular reflection
					double specular = reflection_direction.dotProduct(light_direction);
					if (specular > 0) {
						specular = pow(specular, 10);
						final_Colour = final_Colour.ColourAdd(light_sources.at(light_index)->getLightColour().ColourScalar(specular*winning_object_Colour.getColourSpecial()));
					}
				}
			}
		}
	}
	//Clip the final Colour before returning to ensure correct Colour values
	return final_Colour.clip();

}

#endif

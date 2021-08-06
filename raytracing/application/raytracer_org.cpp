/* THE MAIN FILE - DEFINES ATTRIBUTES AND THE MAIN FUNCTION IN A RAYTRACER */

//Inclues
#include <iostream>
#include <stdlib.h>
#include <stdio.h>
#include <time.h>

#include "SaveBMP.h"
#include "Vect.h"
#include "Ray.h"
#include "Camera.h"
#include "Colour.h"
#include "Light.h"
#include "Sphere.h"
#include "Plane.h"
#include "Object.h"
#include "RayTracingFunctions.h"
#include "Source.h"


using namespace std;

//Variable used to track current pixel
int thisone;

int main (int argc, char *argv[]) {
	//Print that rendering has begun
	cout << "rendering ..." << endl;

	//Use the C++ time class to calculate time to render a scene
	clock_t t1, t2;
	t1 = clock();

	//Setup attribtues to be used
	int dpi = 72;

	//Set the Height and Width
	int width = 800;
	int height = 600;
	int n = width*height;
	RGBType *pixels = new RGBType[n];

	int aadepth = 1;
	double aathreshold = 0.1;
	double aspectratio = (double)width/(double)height;
	double ambientlight = 0.2;
	double accuracy = 0.00000001;

	//Define basic unit vector x,y,z, and the origin
	Vect O (0,0,0);
	Vect X (1,0,0);
	Vect Y (0,1,0);
	Vect Z (0,0,1);

	//Create the Camera for the scence
	//Vector for the position of the camera
	Vect campos (3, 1.5, -6);

	//Vector for the direction (point) that the camera is looking towards
	Vect look_at (2.5, 0, 0);
	Vect diff_btw (campos.getVectX() - look_at.getVectX(), campos.getVectY() - look_at.getVectY(), campos.getVectZ() - look_at.getVectZ());

	Vect camdir = diff_btw.negative().normalize();
	Vect camright = Y.crossProduct(camdir).normalize();
	Vect camdown = camright.crossProduct(camdir);
	//Define the camera scene_cam
	Camera scene_cam (campos, camdir, camright, camdown);

	//Define some basic lights
	Colour white_light (1.0, 1.0, 1.0, 0);
	Colour pretty_green (0.5, 1.0, 0.5, 0.3);
	Colour full_red (1.0 ,0.0 ,0.0, 0.5);
	Colour full_green (0.0 ,1.0 ,0.0, 1);
	Colour full_blue (0.0 ,0.0 ,1.0, 0);
	Colour maroon (0.5, 0.25, 0.25, 0);
	Colour tile_floor (1, 1, 1, 4);
	Colour gray (0.5, 0.5, 0.5, 0);
	Colour black (0.0, 0.0, 0.0, 0);
   	Colour clear (0.5, 0.5, 0.5, 2.5);

	//Setup light sources
	//The vector for a light positon
	Vect light_position (-7,10,-10);
	//Define the light
	Light scene_light (light_position, white_light);
	//Use the vector to hold all light sources
	vector<Source*> light_sources;
	//Push the light sources to the vector
	light_sources.push_back(dynamic_cast<Source*>(&scene_light));

	//Create scene objects
	Sphere scene_sphere (O, 1, pretty_green);
	Vect sphere2_location (1.75, -0.25, 0);
	Sphere scene_sphere2 (sphere2_location, 0.5, clear);
    	Vect sphere3_location (3,-0.25,0);
    	Sphere scene_sphere3 (sphere3_location,0.4,full_blue);
	Vect sphere4_location (2,0,5);
	Sphere scene_sphere4 (sphere4_location,1.0,full_red);
    	Vect sphere5_location (5,2,5);
    	Sphere scene_sphere5 (sphere5_location,1.7,clear);


	Plane scene_plane (Y, -1, tile_floor);
    	Plane scene_plane2 (Z, 10, black);
	//Use the vector to hold all scene objects
	vector<Object*> scene_objects;
	//Push the objects to the vector
	scene_objects.push_back(dynamic_cast<Object*>(&scene_sphere));
	scene_objects.push_back(dynamic_cast<Object*>(&scene_sphere2));
    	scene_objects.push_back(dynamic_cast<Object*>(&scene_sphere3));
    	scene_objects.push_back(dynamic_cast<Object*>(&scene_sphere4));
    	scene_objects.push_back(dynamic_cast<Object*>(&scene_sphere5));

	scene_objects.push_back(dynamic_cast<Object*>(&scene_plane));
    	scene_objects.push_back(dynamic_cast<Object*>(&scene_plane2));

	//Used to track anti-aliasing and the current pixel
	int thisone, aa_index;
	//Used to create rays around the camera
	double xamnt, yamnt;
	//temp Colour values
	double tempRed, tempGreen, tempBlue;

	//Loop through each pixel of the image
	for (int x = 0; x < width; x++) {
		for (int y = 0; y < height; y++) {
			thisone = y*width + x;

			//Start with a blank pixel
			double tempRed[aadepth*aadepth];
			double tempGreen[aadepth*aadepth];
			double tempBlue[aadepth*aadepth];

			for (int aax = 0; aax < aadepth; aax++) {
				for (int aay = 0; aay < aadepth; aay++) {

					aa_index = aay*aadepth + aax;

					srand(time(0));

					//Create the ray from the camera to this pixel
					//Case where anti-aliasing isn't used
					if (aadepth == 1) {

						//Start with no anti-aliasing
						if (width > height) {
							// the image is wider than it is tall
							xamnt = ((x+0.5)/width)*aspectratio - (((width-height)/(double)height)/2);
							yamnt = ((height - y) + 0.5)/height;
						}
						else if (height > width) {
							// the imager is taller than it is wide
							xamnt = (x + 0.5)/ width;
							yamnt = (((height - y) + 0.5)/height)/aspectratio - (((height - width)/(double)width)/2);
						}
						else {
							// the image is square
							xamnt = (x + 0.5)/width;
							yamnt = ((height - y) + 0.5)/height;
						}
					}
					//The case where anti-aliasing is used
					else {
						// anti-aliasing
						if (width > height) {
							// the image is wider than it is tall
							xamnt = ((x + (double)aax/((double)aadepth - 1))/width)*aspectratio - (((width-height)/(double)height)/2);
							yamnt = ((height - y) + (double)aax/((double)aadepth - 1))/height;
						}
						else if (height > width) {
							// the imager is taller than it is wide
							xamnt = (x + (double)aax/((double)aadepth - 1))/ width;
							yamnt = (((height - y) + (double)aax/((double)aadepth - 1))/height)/aspectratio - (((height - width)/(double)width)/2);
						}
						else {
							// the image is square
							xamnt = (x + (double)aax/((double)aadepth - 1))/width;
							yamnt = ((height - y) + (double)aax/((double)aadepth - 1))/height;
						}
					}

					//Get the origin and direction of the Ray
					Vect cam_ray_origin = scene_cam.getCameraPosition();
					Vect cam_ray_direction = camdir.vectAdd(camright.vectMult(xamnt - 0.5).vectAdd(camdown.vectMult(yamnt - 0.5))).normalize();

					//Get the ray from the camera to the current pixel
					Ray cam_ray (cam_ray_origin, cam_ray_direction);

					//Use a vector to track all intersections
					vector<double> intersections;

					//Iterate through all objects and calculate intersections
					for (int index = 0; index < scene_objects.size(); index++) {
						//Push all intersections to the vector
						intersections.push_back(scene_objects.at(index)->findIntersection(cam_ray));
					}

					//Calculate the index of the winning object. This is the object hit first by the ray and wil be displayed ahead of others
					int index_of_winning_object = winningObjectIndex(intersections);

					//If no valid intersection is found then the ray hit nothing
					if (index_of_winning_object == -1) {
						//Set the backgroung black
						tempRed[aa_index] = 0;
						tempGreen[aa_index] = 0;
						tempBlue[aa_index] = 0;
					}
					else{
						//Index coresponds to an object in our scene
						if (intersections.at(index_of_winning_object) > accuracy) {

							//Determine the position and direction vectors at the point of intersection
							Vect intersection_position = cam_ray_origin.vectAdd(cam_ray_direction.vectMult(intersections.at(index_of_winning_object)));
							Vect intersecting_ray_direction = cam_ray_direction;

							//Get the colour at the intersection
							Colour intersection_colour = getColourAt(intersection_position, intersecting_ray_direction, scene_objects, index_of_winning_object, light_sources, accuracy, ambientlight);

							//Set the Red, green, blue values of the colour
							tempRed[aa_index] = intersection_colour.getColourRed();
							tempGreen[aa_index] = intersection_colour.getColourGreen();
							tempBlue[aa_index] = intersection_colour.getColourBlue();
						}
					}
				}
			}

			//Average the pixel color
			double totalRed = 0;
			double totalGreen = 0;
			double totalBlue = 0;

			for (int iRed = 0; iRed < aadepth*aadepth; iRed++) {
				totalRed = totalRed + tempRed[iRed];
			}
			for (int iGreen = 0; iGreen < aadepth*aadepth; iGreen++) {
				totalGreen = totalGreen + tempGreen[iGreen];
			}
			for (int iBlue = 0; iBlue < aadepth*aadepth; iBlue++) {
				totalBlue = totalBlue + tempBlue[iBlue];
			}

			double avgRed = totalRed/(aadepth*aadepth);
			double avgGreen = totalGreen/(aadepth*aadepth);
			double avgBlue = totalBlue/(aadepth*aadepth);

			//Set the colour of the current pixel
			pixels[thisone].r = avgRed;
			pixels[thisone].g = avgGreen;
			pixels[thisone].b = avgBlue;
		}
	}

	//Save the image as "scene.bmp"
	savebmp("Raytracing_Image.bmp",width,height,dpi,pixels);

	//Free up the pixel array
	delete pixels, tempRed, tempGreen, tempBlue;

	//Finish calculations on time of rendering
	t2 = clock();
	float diff = ((float)t2 - (float)t1)/1000;

	//Print out the time to render
	cout << diff << " seconds" << endl;

	//Exit successfully
	return 0;
}

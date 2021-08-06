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
#include "Color.h"
#include "Light.h"
#include "Sphere.h"
#include "Plane.h"
#include "Object.h"
#include "RayTracingFunctions.h"
#include "Source.h"

#define DimX 0
#define DimY 1
#define DimZ 2

using namespace std;

int thisone;
int dpi;
int width;
int height;
int size;
int batch;
RGBType *picture;

double aathreshold;
double aspectratio;
double ambientlight;
double accuracy;

double pos_O[] = {0, 0, 1};
double pos_X[] = {1, 0, 0};
double pos_Y[] = {0, 1, 0};
double pos_Z[] = {0, 0, 1};
double pos_camPos[] = {3, 1.5, -6};
double pos_look[] = {2.5, 0, 0};
double pos_light[] = {-7, 10, -10};

Vect VectO(0, 0, 1);
Vect VectX(1, 0, 0);
Vect VectY(0, 1, 0);
Vect VectZ(0, 0, 1);
Vect campos(3, 1.5, -6);
Vect look_at(2.5, 0, 0);
Vect light_position(-7, 10, -10);

double pos_camRayOrigin[] = {0, 0, 0};
Vect cam_ray_origin;

Color white_light (1.0, 1.0, 1.0, 0);
Color pretty_green (0.5, 1.0, 0.5, 0.3);
Color full_red (1.0 ,0.0 ,0.0, 0.5);
Color full_green (0.0 ,1.0 ,0.0, 1);
Color full_blue (0.0 ,0.0 ,1.0, 0);
Color maroon (0.5, 0.25, 0.25, 0);
Color tile_floor (1, 1, 1, 4);
Color gray (0.5, 0.5, 0.5, 0);
Color black (0.0, 0.0, 0.0, 0);
Color clear (0.5, 0.5, 0.5, 2.5);

vector<Source*> light_sources;

// double pos_sphere2[] = {1.75, -0.25, 0};
// double pos_sphere3[] = {3, -0.25, 0};
// double pos_sphere4[] = {2, 0, 5};
// double pos_sphere5[] = {5, 2, 5};
Vect sphere2_location (1.75, -0.25, 0);
Vect sphere3_location (3, -0.25, 0);
Vect sphere4_location (2, 0, 5);
Vect sphere5_location (5, 2, 5);

vector<Object*>* scene_objects;

void CreateRay(int, double*, double*);
void CaptureRay(int, double*, double*, double**, Ray*);
void TrackInt(int, vector<Object*>*, Ray*, vector<double>*);
void PrioObj(int, vector<double>*, int*);
void DetPos(int, vector<double>*, int*, double**, Vect*, Vect*);
void GetColor(int, vector<double>*, int*, Vect*, Vect*, Color*);
void SetColor(int, vector<double>*, int*, Color*, RGBType*);

Color getColorAt(double*, double*, std::vector<Object*>, int, std::vector<Source*>, double, double);

int main(int argc, char *argv[]) {

  // Setup attribtues to be used
  dpi = 72;
  
  // Set the Height and Width (800 x 1200 is our target)
  // width = 800;
  // height = 1200;
  width = 300;
  height = 600;
  size = width * height;
  picture = new RGBType[size];
  
  aathreshold = 0.1;
  aspectratio = (double)width/(double)height;
  ambientlight = 0.2;
  accuracy = 0.00000001;
  // Note that batch need to be carefully decided in this demo,
  // because we will ignore the entire batch when there is one
  // pixel has no overlapped objectives.
  batch = 100;
  
  // Define basic unit vector x,y,z, and the origin
  // Vect O (0,0,0);
  // Vect X (1,0,0);
  // Vect Y (0,1,0);
  // Vect Z (0,0,1);
  
  // Create the Camera for the scence
  // Vector for the position of the camera
  // Vect campos (3, 1.5, -6);
  
  // Vector for the direction (point) that the camera is looking towards
  // Vect look_at (2.5, 0, 0);
  // Vect diff_btw (campos.getVectX() - look_at.getVectX(), campos.getVectY() - look_at.getVectY(), campos.getVectZ() - look_at.getVectZ());
  // 
  // Vect camdir = diff_btw.negative().normalize();
  // Vect camright = Y.crossProduct(camdir).normalize();
  // Vect camdown = camright.crossProduct(camdir);
  // // Define the camera scene_cam
  // Camera scene_cam (campos, camdir, camright, camdown);
  
  // Define some basic lights
  // Color white_light (1.0, 1.0, 1.0, 0);
  // Color pretty_green (0.5, 1.0, 0.5, 0.3);
  // Color full_red (1.0 ,0.0 ,0.0, 0.5);
  // Color full_green (0.0 ,1.0 ,0.0, 1);
  // Color full_blue (0.0 ,0.0 ,1.0, 0);
  // Color maroon (0.5, 0.25, 0.25, 0);
  // Color tile_floor (1, 1, 1, 4);
  // Color gray (0.5, 0.5, 0.5, 0);
  // Color black (0.0, 0.0, 0.0, 0);
  // Color clear (0.5, 0.5, 0.5, 2.5);
  
  // Setup light sources
  // The vector for a light positon
  // Vect light_position (-7,10,-10);
  // Define the light
  Light scene_light (light_position, white_light);
  // Use the vector to hold all light sources
  // vector<Source*> light_sources;
  // Push the light sources to the vector
  light_sources.push_back(dynamic_cast<Source*>(&scene_light));
  
  // Create scene objects
  Sphere scene_sphere (VectO, 1, pretty_green);
  Sphere scene_sphere2 (sphere2_location, 0.5, clear);
  Sphere scene_sphere3 (sphere3_location,0.4,full_blue);
  Sphere scene_sphere4 (sphere4_location,1.0,full_red);
  Sphere scene_sphere5 (sphere5_location,0.7,clear);
  
  Plane scene_plane (VectY, -1, tile_floor);
  Plane scene_plane2 (VectZ, 10, black);
  // Use the vector to hold all scene objects
  // vector<Object*> scene_objects;
  // Push the objects to the vector
  scene_objects = new vector<Object*>();
  scene_objects->push_back(dynamic_cast<Object*>(&scene_sphere));
  scene_objects->push_back(dynamic_cast<Object*>(&scene_sphere2));
  scene_objects->push_back(dynamic_cast<Object*>(&scene_sphere3));
  scene_objects->push_back(dynamic_cast<Object*>(&scene_sphere4));
//  scene_objects->push_back(dynamic_cast<Object*>(&scene_sphere5));
  scene_objects->push_back(dynamic_cast<Object*>(&scene_plane));
//  scene_objects->push_back(dynamic_cast<Object*>(&scene_plane2));

  // Used to track anti-aliasing and the current pixel
  // int thisone, aa_index;
  // Used to create rays around the camera
  // double xamnt, yamnt;
  // temp Color values
  // double tempRed, tempGreen, tempBlue;

  double* xamnt = new double[size];
  double* yamnt = new double[size];

//  cam_ray_origin = new Vect[size];

  double** cam_ray_direction = new double*[size];
  // double** intersection_position = new double*[size];
  // double** intersecting_ray_direction = new double*[size];
  Vect* intersection_position = new Vect[size];
  Vect* intersecting_ray_direction = new Vect[size];

  for(int i=0; i<size; ++i) {
    cam_ray_direction[i] = new double[3];
    // intersection_position[i] = new double[3];
    // intersecting_ray_direction[i] = new double[3];
  }
  Ray* cam_ray = new Ray[size];
  vector<double>* intersections = new vector<double>[size];
  int* index_of_winning_object = new int[size];

  Color* intersection_color = new Color[size];

  // Print that rendering has begun
  cout << "rendering ..." << endl;
  
  // Use the C++ time class to calculate time to render a scene
  clock_t t1, t2;
  t1 = clock();

  // cam_ray_direction = new Vect[size];
  // cam_ray = new Ray[size];
  // intersections = new vector<double>[size];
  // index_of_winning_object = new int[size];

  // intersection_position = new Vect[size];
  // intersecting_ray_direction = new Vect[size];
  // intersection_color = new Color[size];
 
  // Loop through each pixel of the image
  for (int p = 0; p < size; p+=batch) {

    // Create ray
    CreateRay(p, xamnt, yamnt);
    
    // Capture ray
    CaptureRay(p, xamnt, yamnt, cam_ray_direction, cam_ray);

    // Track interaction
    TrackInt(p, scene_objects, cam_ray, intersections);
     
    // Prioritize object
    PrioObj(p, intersections, index_of_winning_object);

    // Determine position
    DetPos(p, intersections, index_of_winning_object, cam_ray_direction, intersection_position, intersecting_ray_direction);

    // Get color
    GetColor(p, intersections, index_of_winning_object, intersection_position, intersecting_ray_direction, intersection_color);
       
    // Set color
    SetColor(p, intersections, index_of_winning_object, intersection_color, picture);
  }
  
  // Save the image as "scene.bmp"
  savebmp("./scene.bmp",width,height,dpi,picture);
  
  // Finish calculations on time of rendering
  t2 = clock();
  float diff = ((float)t2 - (float)t1)/1000;
  
  // Print out the time to render
  cout << diff << " seconds" << endl;
  
  // Exit successfully
  return 0;
}

void CreateRay(int pixel, double* xamnt, double* yamnt) {

  for (int current = pixel; current < min(width*height, pixel+batch); current++) {

    int x = current / height;
    int y = current % height;
    
    // Create the ray from the camera to this pixel
    // Case where anti-aliasing isn't used
    // We ignore the case where anti-aliasing is used for simplicity

    // Start with no anti-aliasing
    if (width > height) {
      // the image is wider than it is tall
      xamnt[current] = ((x+0.5)/width)*aspectratio - (((width-height)/(double)height)/2);
      yamnt[current] = ((height - y) + 0.5)/height;
    }
    else if (height > width) {
      // the imager is taller than it is wide
      xamnt[current] = (x + 0.5)/ width;
      yamnt[current] = (((height - y) + 0.5)/height)/aspectratio - (((height - width)/(double)width)/2);
    }
    else {
      // the image is square
      xamnt[current] = (x + 0.5)/width;
      yamnt[current] = ((height - y) + 0.5)/height;
    }
  }
}

void normalize(double* in, double* out) {
  double magnitude = sqrt((in[DimX]*in[DimX]) + (in[DimY]*in[DimY]) + (in[DimZ]*in[DimZ]));
  out[DimX] = in[DimX] / magnitude;
  out[DimY] = in[DimY] / magnitude;
  out[DimZ] = in[DimZ] / magnitude;
}

void negNormalize(double* in, double* out) {
  double magnitude = sqrt((in[DimX]*in[DimX]) + (in[DimY]*in[DimY]) + (in[DimZ]*in[DimZ]));
  out[DimX] = -in[DimX] / magnitude;
  out[DimY] = -in[DimY] / magnitude;
  out[DimZ] = -in[DimZ] / magnitude;
}

void crossProduct(double* in0, double* in1, double* out) {
  out[DimX] = in0[DimY] * in1[DimZ] - in0[DimZ] * in1[DimY];
  out[DimY] = in0[DimZ] * in1[DimX] - in0[DimX] * in1[DimZ];
  out[DimZ] = in0[DimX] * in1[DimY] - in0[DimY] * in1[DimX];
}

void vectMult(double* in, double scalar, double* out) {
  out[DimX] = in[DimX] * scalar;
  out[DimY] = in[DimY] * scalar;
  out[DimZ] = in[DimZ] * scalar;
}

void vectAdd(double* in0, double* in1, double* out) {
  out[DimX] = in0[DimX] + in1[DimX];
  out[DimY] = in0[DimY] + in1[DimY];
  out[DimZ] = in0[DimZ] + in1[DimZ];
}

void CaptureRay(int pixel, double* xamnt, double* yamnt, double** cam_ray_direction, Ray* cam_ray) {

  double _diff_btw[] = { pos_camPos[DimX] - pos_look[DimX], pos_camPos[DimY] - pos_look[DimY], pos_camPos[DimZ] - pos_look[DimZ] };
  double _camdir[] = {0, 0, 0};
  negNormalize(_diff_btw, _camdir);
  double _temp[] = {0, 0, 0};
  double _camright[] = {0, 0, 0};
  crossProduct(pos_Y, _camdir, _temp);
  normalize(_temp, _camright);
  double _camdown[] = {0, 0, 0};
  crossProduct(_camright, _camdir, _camdown);
  
  // Vect diff_btw (campos.getVectX() - look_at.getVectX(), campos.getVectY() - look_at.getVectY(), campos.getVectZ() - look_at.getVectZ());
  // Vect camdir = diff_btw.negative().normalize();
  // Vect camright = VectY.crossProduct(camdir).normalize();
  // Vect camdown = camright.crossProduct(camdir);

  // Vect camdir(_camdir[DimX], _camdir[DimY], _camdir[DimZ]);
  // Vect camright(_camright[DimX], _camright[DimY], _camright[DimZ]);
  // Vect camdown(_camdown[DimX], _camdown[DimY], _camdown[DimZ]);

  // Define the camera scene_cam
  // Camera scene_cam (campos, camdir, camright, camdown);
  double temp0[] = {0, 0, 0};
  double temp1[] = {0, 0, 0};
  double temp2[] = {0, 0, 0};
 
  for (int current = pixel; current < min(size, pixel+batch); current++) {

    int x = current / height;
    int y = current % height;
    thisone = y*width + x;
    
    // Get the origin and direction of the Ray
    Vect origin = campos; // scene_cam.getCameraPosition();
    cam_ray_origin = origin;

    vectMult(_camright, xamnt[current] - 0.5, temp0);
    vectMult(_camdown, yamnt[current] - 0.5, temp1);
    vectAdd(temp0, temp1, temp2);
    vectAdd(_camdir, temp2, _temp);
    normalize(_temp, cam_ray_direction[current]);
    Vect direction(cam_ray_direction[current][DimX], cam_ray_direction[current][DimY], cam_ray_direction[current][DimZ]);

    // Vect direction = camdir.vectAdd(camright.vectMult(xamnt[current] - 0.5).vectAdd(camdown.vectMult(yamnt[current] - 0.5))).normalize();
    // cam_ray_direction[current][DimX] = direction.getVectX();
    // cam_ray_direction[current][DimY] = direction.getVectY();
    // cam_ray_direction[current][DimZ] = direction.getVectZ();
    
    // Get the ray from the camera to the current pixel
    Ray ray = Ray(origin, direction);
    cam_ray[current] = ray;
  }
}

void TrackInt(int pixel, vector<Object*>* scene_objects, Ray* cam_ray, vector<double>* intersections) {

  for (int current = pixel; current < min(size, pixel+batch); current++) {

    // Use a vector to track all intersections
    // vector<double> intersections;
    
    // Iterate through all objects and calculate intersections
    for (int index = 0; index < scene_objects->size(); index++) {
      // Push all intersections to the vector
      intersections[current].push_back(scene_objects->at(index)->findIntersection(cam_ray[current]));
    }
  }
}

void PrioObj(int pixel, vector<double>* intersections, int* index_of_winning_object) {

  for (int current = pixel; current < min(size, pixel+batch); current++) {

    // Calculate the index of the winning object. This is the object hit first by the ray and wil be displayed ahead of others
    // int index_of_winning = winningObjectIndex(intersections[current]);
    index_of_winning_object[current] = winningObjectIndex(intersections[current]);
  }
}

void DetPos(int pixel, vector<double>* intersections, int* index_of_winning_object, double** cam_ray_direction, Vect* intersection_position, Vect* intersecting_ray_direction) {
//void DetPos(int pixel, vector<double>* intersections, int* index_of_winning_object, double** cam_ray_direction, Vect* intersection_position, Vect* intersecting_ray_direction) {

  for (int current = pixel; current < min(size, pixel+batch); current++) {

    // If no valid intersection is found then the ray hit nothing
    // if (index_of_winning == -1) {
    if (index_of_winning_object[current] != -1) {
      // Index coresponds to an object in our scene
      // if (intersections[current].at(index_of_winning) > accuracy) {
      if (intersections[current].at(index_of_winning_object[current]) > accuracy) {
  
        // Determine the position and direction vectors at the point of intersection
        // Vect intersection_position = cam_ray_origin[current].vectAdd(cam_ray_direction[current].vectMult(intersections[current].at(index_of_winning)));
        Vect temp(cam_ray_direction[current][DimX], cam_ray_direction[current][DimY], cam_ray_direction[current][DimZ]);

        // double temp0[] = {0, 0, 0};
        // vectMult(cam_ray_direction[current], intersections[current].at(index_of_winning_object[current]), temp0);
        // vectAdd(pos_camRayOrigin, temp0, intersection_position[current]);
        // intersecting_ray_direction[current][DimX] = cam_ray_direction[current][DimX];
        // intersecting_ray_direction[current][DimY] = cam_ray_direction[current][DimY];
        // intersecting_ray_direction[current][DimZ] = cam_ray_direction[current][DimZ];
        intersection_position[current] = cam_ray_origin.vectAdd(temp.vectMult(intersections[current].at(index_of_winning_object[current])));
        intersecting_ray_direction[current] = temp;
      }
    } else {
      break;
    }
  }
}

void GetColor(int pixel, vector<double>* intersections, int* index_of_winning_object, Vect* intersection_position, Vect* intersecting_ray_direction, Color* intersection_color) {

  for (int current = pixel; current < min(size, pixel+batch); current++) {

    // If no valid intersection is found then the ray hit nothing
    // if (index_of_winning == -1) {
    if (index_of_winning_object[current] != -1) {
      // Index coresponds to an object in our scene
      // if (intersections[current].at(index_of_winning) > accuracy) {
      if (intersections[current].at(index_of_winning_object[current]) > accuracy) {
 
        // Get the color at the intersection
        // Color intersection_color = getColorAt(intersection_position, intersecting_ray_direction, scene_objects, index_of_winning, light_sources, accuracy, ambientlight);
        intersection_color[current] = getColorAt(intersection_position[current], intersecting_ray_direction[current], *scene_objects, index_of_winning_object[current], light_sources, accuracy, ambientlight);
      }
    } else {
      break;
    }
  }
}

void SetColor(int pixel, vector<double>* intersections, int* index_of_winning_object, Color* intersection_color, RGBType* picture) {

  for (int current = pixel; current < min(size, pixel+batch); current++) {

    int x = current / height;
    int y = current % height;
    thisone = y*width + x;

    // Start with a blank pixel
    double tempRed;
    double tempGreen;
    double tempBlue;
 
    // If no valid intersection is found then the ray hit nothing
    // if (index_of_winning == -1) {
    if (index_of_winning_object[current] == -1) {
      //Set the backgroung black
      tempRed = 0;
      tempGreen = 0;
      tempBlue = 0;
      break;
    }
    else{
      // Index coresponds to an object in our scene
      // if (intersections[current].at(index_of_winning) > accuracy) {
      if (intersections[current].at(index_of_winning_object[current]) > accuracy) {
 
        // Set the Red, green, blue values of the color
        tempRed = intersection_color[current].getColorRed();
        tempGreen = intersection_color[current].getColorGreen();
        tempBlue = intersection_color[current].getColorBlue();
      }
    }
    // Set the color of the current pixel
    // Averaging the pixel color is ignored for simplicity
    picture[thisone].r = tempRed;
    picture[thisone].g = tempGreen;
    picture[thisone].b = tempBlue;
  }
}



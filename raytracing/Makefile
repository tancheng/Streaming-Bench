OBJ = raytracer.o
INC = -I "./"

Raytracer: $(OBJ)
	g++ $(OBJ) -o raytracer.out
	rm -f $(OBJ)

raytracer.o:
	g++ -c raytracer.cpp $(INC)

clean:
	rm -f $(OBJ) raytracer.out Raytracing_Image.bmp

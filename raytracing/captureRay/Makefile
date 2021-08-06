OBJ = main.o
INC = -I "./"

Raytracer: $(OBJ)
	g++ $(OBJ) -o a.out
	rm -f $(OBJ)

raytracer.o:
	g++ -c main.cpp $(INC)

clean:
	rm -f $(OBJ) a.out Raytracing_Image.bmp

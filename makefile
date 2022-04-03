# Makefile NX

complex: bin/obj/mycomplex.o bin/obj/testcmp.o
	g++ -o bin/complex bin/obj/mycomplex.o bin/obj/testcmp.o


bin/obj/mycomplex.o: mycomplex.cpp mycomplex.h
	g++ -o bin/obj/mycomplex.o -c mycomplex.cpp

bin/obj/testcmp.o: testcmp.cpp
	g++ -o bin/obj/testcmp.o -c testcmp.cpp

clean:
	del "bin\complex.exe"
	del "bin\obj\*.o"
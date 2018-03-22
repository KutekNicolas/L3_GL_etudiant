CXXFLAGS= -Wall -g -std=c++14
all: sayHello

sayHello: sayHello.o module1.o
	g++ $(CXXFLAGS) -o  $@ $^
clean:
	rm -f *.o *.out sayHello

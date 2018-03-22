CXXFLAGS= -Wall `pkg-config --cflags opencv`
LDFLAGS= `pkg-config --libs opencv`
all: imshow

imshow: imshow.o
	g++ $(CCXXFLAGS) -o $@ $(LDFLAGS) $<
clean:
	rm -f *.o *.out imshow

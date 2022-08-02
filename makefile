PREFIX = bin

libbgi.a: drawing.o misc.o mouse.o palette.o text.o winbgi.o winthread.o file.o dibutil.o winbgim.h graphics.h
	ar -rv ${PREFIX}/libbgi.a ${PREFIX}/drawing.o ${PREFIX}/misc.o ${PREFIX}/mouse.o ${PREFIX}/palette.o ${PREFIX}/text.o ${PREFIX}/winthread.o ${PREFIX}/winbgi.o ${PREFIX}/file.o ${PREFIX}/dibutil.o
clean:
	rm *.o  
	rm libbgi.a

CPPFLAGS = -c -O3 -fno-rtti -fno-exceptions -w -fpermissive

drawing.o: drawing.cxx winbgim.h winbgitypes.h
	g++ $(CPPFLAGS) drawing.cxx -o ${PREFIX}/$@

misc.o: misc.cxx winbgim.h winbgitypes.h
	g++ $(CPPFLAGS) misc.cxx -o ${PREFIX}/$@

mouse.o: mouse.cxx winbgim.h winbgitypes.h
	g++ $(CPPFLAGS) mouse.cxx -o ${PREFIX}/$@

palette.o: palette.cxx winbgim.h winbgitypes.h
	g++ $(CPPFLAGS) palette.cxx -o ${PREFIX}/$@

text.o: text.cxx winbgim.h winbgitypes.h
	g++ $(CPPFLAGS) text.cxx -o ${PREFIX}/$@

winbgi.o: winbgi.cxx winbgim.h winbgitypes.h
	g++ $(CPPFLAGS) winbgi.cxx -o ${PREFIX}/$@

winthread.o: winthread.cxx winbgim.h winbgitypes.h
	g++ $(CPPFLAGS) winthread.cxx -o ${PREFIX}/$@

dibutil.o: dibutil.cxx dibutil.h dibapi.h
	g++ $(CPPFLAGS) dibutil.cxx -o ${PREFIX}/$@

file.o: file.cxx dibutil.h dibapi.h winbgitypes.h
	g++ $(CPPFLAGS) -c file.cxx -o ${PREFIX}/$@

graphics.h: winbgim.h
	rm graphics.h
	cp winbgim.h graphics.h

bgi.exe: bgi.cxx
	g++ bgi.cxx -o bgi.exe


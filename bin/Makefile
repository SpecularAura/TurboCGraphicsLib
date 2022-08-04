SRC = Testprogram.cpp
EXE = $(patsubst %.cpp,%,$(SRC))
CC = -Wno-write-strings
IDIR = .
LINKDIR = .
LINKFILES = -lbgi -lgdi32 -lcomdlg32 -luuid -loleaut32 -lole32
$(EXE): $(SRC)
	g++ $(CC) $(SRC) -I$(IDIR) -L$(LINKDIR) $(LINKFILES) -o $@
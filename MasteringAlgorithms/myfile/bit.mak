ALGOWC_TOPDIR = /Users/zhouma/workspace/mygit/c/MasteringAlgorithms
MAKNAM = bit.mak
LIBDRS =
INCDRS = -I$(ALGOWC_TOPDIR)/include
LIBFLS =
SRCFLS = bit.c\
         $(ALGOWC_TOPDIR)/source/bit.c
         
OBJFLS = bit.o\
         $(ALGOWC_TOPDIR)/source/bit.o

EXE    = bit.exe

CC     = gcc
LL     = gcc
CFLAGS = -g 
LFLAGS =

$(EXE): $(OBJFLS)
	$(LL) $(LFLAGS) -o $@ $(OBJFLS) $(LIBDRS) $(LIBFLS)

.c.o:
	$(CC) $(CFLAGS) -o $@ -c $(INCDRS) $<

all:
	make -f $(MAKNAM) clean
	make -f $(MAKNAM) depend

depend:
	makedepend $(INCDRS) -f $(MAKNAM) $(SRCFLS)
	make -f $(MAKNAM) $(EXE)

clean:
	-rm $(EXE)
	-rm $(OBJFLS)

# DO NOT DELETE THIS LINE -- make depend depends on it.

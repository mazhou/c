ALGOWC_TOPDIR = /Users/zhouma/workspace/mygit/c/MasteringAlgorithms
MAKNAM = list.mak
LIBDRS =
INCDRS = -I$(ALGOWC_TOPDIR)/include
LIBFLS =
SRCFLS = list.c\
         $(ALGOWC_TOPDIR)/source/list.c
OBJFLS = list.o\
         $(ALGOWC_TOPDIR)/source/list.o
EXE    = list.exe
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
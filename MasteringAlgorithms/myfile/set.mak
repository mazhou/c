ALGOWC_TOPDIR = /Users/zhouma/workspace/mygit/c/MasteringAlgorithms
MAKNAM = set.mak
LIBDRS =
INCDRS = -I$(ALGOWC_TOPDIR)/include
LIBFLS =
SRCFLS = set.c\
         $(ALGOWC_TOPDIR)/source/list.c\
         $(ALGOWC_TOPDIR)/source/set.c
OBJFLS = set.o\
         $(ALGOWC_TOPDIR)/source/list.o\
         $(ALGOWC_TOPDIR)/source/set.o
EXE    = set.exe
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

TARGET  = prog1
CC	= gcc
PROC	= proc
LIB	= -L$(LD_LIBRARY_PATH) -lclntsh
MYINC   = include/
CINC    = -I/usr/include/ -I/usr/lib/gcc/x86_64-redhat-linux/4.1.2/include \
          -I/usr/lib/gcc/x86_64-redhat-linux/4.4.7/include \
          -I/usr/lib/gcc/x86_64-redhat-linux/4.4.4/include \
          -I$(ORACLE_HOME)/precomp/public \
		  -I$(ORACLE_HOME)/rdbms/public
#ORA_INC	= $(ORACLE_HOME)/rdbms/public
ORA_OPT	= PARSE=NONE RELEASE_CURSOR=YES MODE=ORACLE
CC_OPT	=
OBJECT	= $(TARGET).o
ORA_GARBAGE	= *.dcl *.cod *.cud *.lis

.SUFFIXES: .pc .c

.pc.c:
	$(PROC) $* INCLUDE=$(MYINC) $(PROCINC) $(ORA_OPT)
#$(PROC) SQLCHECK=SEMANTICS USERID=shlee/shlee $*
#	$(PROC) $*

.c.o:
	$(CC) -c -o $*.o $*.c -I $(MYINC) $(CINC)

all : $(TARGET)

$(TARGET):      $(OBJECT)
	$(CC) -o $(TARGET) $(OBJECT) $(LIB)

clean :
	rm -f $(OBJECT) $(ORA_GARBAGE)

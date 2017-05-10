#See README file

AMIGO_LIBS=$(AMIGO_PATH)/Kernel/libAMIGO/lib_linux64

INC+=-I$(AMIGO_PATH)/Kernel/libAMIGO/include/include_amigo 
INC+=-I$(AMIGO_PATH)Kernel/libAMIGO/include/include_nl2sol  
INC+=-I$(AMIGO_PATH)/Kernel/libAMIGO/include/include_mxInterface  
INC+=-I$(AMIGO_PATH)/Kernel/libAMIGO/include/include_cvodes 
INC+=-I$(AMIGO_PATH)/Kernel/libAMIGO/include/include_f2c 
INC+=-I$(AMIGO_PATH)/Kernel/libAMIGO/include/include_de 
INC+=-I$(AMIGO_PATH)/Kernel/libAMIGO/include/include_SRES 
INC+=-I$(MATLAB_PATH)/extern/include 

SRC=b2_fullC_template.c

CLIBS+=-L$(AMIGO_LIBS) -L$(MATLAB_LIB) -Wl,-rpath,$(MATLAB_LIB)
CLIBS+=-lm -lmex -lmx -lmat -lmxInterface -lAMIGO -lf2c -fopenmp 

CFLAGS +=  -DMATLAB  $(INC)  -fopenmp -O2 -fPIC
LDFLAGS += $(CLIBS) 

CC := gcc

OBJFILES := $(SRC:.c=.o)
DEPFILES := $(SRC:.c=.d)

B2 : $(OBJFILES)
	$(CC) $(OBJFILES) -o B2 $(CFLAGS) $(CLIBS)
	
clean :
	rm -f $(OBJFILES) $(DEPFILES)
-include $(DEPFILES)



    


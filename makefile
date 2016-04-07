#requiresdefine   'PETSC_HAVE_ATTRIBUTEALIGNED'

ALL:pf

OBJECTS_PF = pf.o PFReadData.o

include ${PETSC_DIR}/lib/petsc/conf/variables
include ${PETSC_DIR}/lib/petsc/conf/rules


pf: $(OBJECTS_PF) chkopts
	-${CLINKER} -o pf $(OBJECTS_PF) ${PETSC_SNES_LIB}
	${RM} $(OBJECTS_PF)

CC   =  fbc32
FLG1 =  -s console
RES  =  comoc_res.res
AC   =  comoc.bas
EXE  =  comoc.exe
RumH =  $(EXE) -h
RumV =  $(EXE) -v

todos:comoc
	
comoc:
	$(CC) $(FLG1) $(AC) $(RES)

run:
	@echo.
	@$(EXE) -c
	
h:
	@$(RumH)

v:
	@$(RumV)
	
del:
	@del $(EXE) 
	

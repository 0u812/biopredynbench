# DO NOT CHANGE ANYTHING HERE!!! ##################################
# (unless you know *exactly* what you're doing...) 

#all objects
AOBJ = zygotic.o fly_io.o maternal.o integrate.o translate.o savestate.o fly_sa.o ../util/error.o ../util/ioTools.o solvers.o score.o # ../util/distributions.o ../util/random.o ../util/dSFMT.o ../util/dSFMT_str_state.o

#fly_sa objects
FOBJ = zygotic.o fly_io.o maternal.o integrate.o translate.o \
         ../util/error.o ../util/distributions.o ../util/random.o ../util/ioTools.o solvers.o score.o ../util/dSFMT.o ../util/dSFMT_str_state.o
# serial code
FSOBJ = fly_sa.o savestate.o # moves.o ../util/lsa.o
# parallel code
# FPOBJ = moves-mpi.o fly_sa-mpi.o ../util/lsa-mpi.o savestate-mpi.o


#printscore objects
POBJ = zygotic.o fly_io.o maternal.o integrate.o translate.o \
       ../util/error.o ../util/distributions.o ../util/random.o ../util/ioTools.o solvers.o score.o printscore.o ../util/dSFMT.o ../util/dSFMT_str_state.o

#unfold objects
UOBJ = zygotic.o fly_io.o maternal.o integrate.o translate.o \
	 ../util/error.o ../util/distributions.o ../util/random.o ../util/ioTools.o solvers.o score.o unfold.o ../util/dSFMT.o ../util/dSFMT_str_state.o

#scramble objects
SOBJ = zygotic.o fly_io.o maternal.o integrate.o translate.o \
	 ../util/error.o ../util/distributions.o ../util/random.o ../util/ioTools.o solvers.o score.o scramble.o ../util/dSFMT.o ../util/dSFMT_str_state.o

SOURCES = `ls *.c`

#Below here are the rules for building things

all: $(FLYEXECS)

# special cases: dependencies and flags for individual .c files

fly_sa.o: fly_sa.c
	$(CC) -c $(CFLAGS) $(VFLAGS) fly_sa.c

printscore.o: printscore.c
	$(CC) -c $(CFLAGS) $(VFLAGS) printscore.c

scramble.o: scramble.c
	$(CC) -c $(CFLAGS) $(VFLAGS) scramble.c

unfold.o: unfold.c
	$(CC) -c $(CFLAGS) $(VFLAGS) unfold.c

zygotic.o: zygotic.c
	$(CC) -c $(CFLAGS) zygotic.c

objects: $(AOBJ)	


# parallel stuff

#fly_sa-mpi.o: fly_sa.c
#	$(MPICC) -c -o fly_sa-mpi.o $(MPIFLAGS) $(CFLAGS) $(VFLAGS) fly_sa.c

#lsa-mpi.o: ../util/lsa.c
#	$(MPICC) -c -o ../util/lsa-mpi.o $(MPIFLAGS) $(CFLAGS) ../util/lsa.c

#moves-mpi.o: moves.c 
#	$(MPICC) -c -o moves-mpi.o $(MPIFLAGS) $(CFLAGS) moves.c

#savestate-mpi.o: savestate.c
#	$(MPICC) -c -o savestate-mpi.o $(MPIFLAGS) $(CFLAGS) savestate.c

# executable targets: serial ...

fly_sa: $(FOBJ) $(FSOBJ)
	$(CC) -o fly_sa $(CFLAGS) $(LDFLAGS) $(FOBJ) $(FSOBJ) $(FLIBS) 

printscore: $(POBJ)
	$(CC) -o printscore $(CFLAGS) $(LDFLAGS) $(POBJ) $(LIBS) 

unfold: $(UOBJ)
	$(CC) -o unfold $(CFLAGS) $(LDFLAGS) $(UOBJ) $(LIBS) 

scramble: $(SOBJ)
	$(CC) -o scramble $(CFLAGS) $(LDFLAGS) $(SOBJ) $(LIBS) 

# ... and parallel

#fly_sa.mpi: $(FOBJ) $(FPOBJ)
#	$(MPICC) -o fly_sa.mpi $(CFLAGS) $(LDFLAGS) $(FOBJ) $(FPOBJ) $(FLIBS)

# ... and here are the cleanup and make deps rules

clean:
	rm -f *.o core*

Makefile: ${FRC}
	rm -f $@
	cp basic.mk $@
	echo "#Automatically generated dependencies list#" >> $@
	${CC} $(INCLUDES) -M ${SOURCES} >> $@
	chmod -w $@

#Automatically generated dependencies list#
fly_io.o: fly_io.c /usr/include/string.h /usr/include/features.h \
  /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h \
  /usr/include/gnu/stubs.h /usr/include/gnu/stubs-64.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/stddef.h \
  /usr/include/math.h /usr/include/bits/huge_val.h \
  /usr/include/bits/mathdef.h /usr/include/bits/mathcalls.h \
  /home/davidh/trunk/util/mathLib.h fly_io.h /usr/include/stdio.h \
  /usr/include/bits/types.h /usr/include/bits/typesizes.h \
  /usr/include/libio.h /usr/include/_G_config.h /usr/include/wchar.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/stdarg.h \
  /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h \
  /usr/include/ctype.h /usr/include/endian.h /usr/include/bits/endian.h \
  ../util/global.h /usr/lib64/gcc/x86_64-suse-linux/4.3/include/float.h \
  ../util/ioTools.h /usr/include/stdlib.h /usr/include/sys/types.h \
  /usr/include/time.h /usr/include/sys/select.h \
  /usr/include/bits/select.h /usr/include/bits/sigset.h \
  /usr/include/bits/time.h /usr/include/sys/sysmacros.h \
  /usr/include/bits/pthreadtypes.h /usr/include/alloca.h \
  /usr/include/sys/time.h ../util/global.h ../util/error.h maternal.h \
  /home/davidh/trunk/util/global.h
fly_sa.o: fly_sa.c /usr/lib64/gcc/x86_64-suse-linux/4.3/include/float.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include-fixed/limits.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include-fixed/syslimits.h \
  /usr/include/limits.h /usr/include/features.h /usr/include/sys/cdefs.h \
  /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h \
  /usr/include/gnu/stubs-64.h /usr/include/bits/posix1_lim.h \
  /usr/include/bits/local_lim.h /usr/include/linux/limits.h \
  /usr/include/bits/posix2_lim.h /usr/include/stdlib.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/stddef.h \
  /usr/include/sys/types.h /usr/include/bits/types.h \
  /usr/include/bits/typesizes.h /usr/include/time.h /usr/include/endian.h \
  /usr/include/bits/endian.h /usr/include/sys/select.h \
  /usr/include/bits/select.h /usr/include/bits/sigset.h \
  /usr/include/bits/time.h /usr/include/sys/sysmacros.h \
  /usr/include/bits/pthreadtypes.h /usr/include/alloca.h \
  /usr/include/stdio.h /usr/include/libio.h /usr/include/_G_config.h \
  /usr/include/wchar.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/stdarg.h \
  /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h \
  /usr/include/string.h /usr/include/unistd.h \
  /usr/include/bits/posix_opt.h /usr/include/bits/confname.h \
  /usr/include/getopt.h /home/davidh/trunk/util/error.h \
  /home/davidh/trunk/util/global.h integrate.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_errno.h \
  /usr/include/errno.h /usr/include/bits/errno.h \
  /usr/include/linux/errno.h /usr/include/asm/errno.h \
  /usr/include/asm-generic/errno.h /usr/include/asm-generic/errno-base.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_types.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_spline.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_interp.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_inline.h maternal.h \
  /home/davidh/trunk/util/sa.h score.h fly_io.h /usr/include/ctype.h \
  ../util/global.h ../util/ioTools.h /usr/include/math.h \
  /usr/include/bits/huge_val.h /usr/include/bits/mathdef.h \
  /usr/include/bits/mathcalls.h /usr/include/sys/time.h ../util/global.h \
  ../util/error.h solvers.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_nvector.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_types.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_config.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode_band.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode_direct.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_direct.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_band.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode_spgmr.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode_spils.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_iterative.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_spgmr.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/nvector/nvector_serial.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_dense.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_math.h \
  zygotic.h /usr/include/sys/resource.h /usr/include/bits/resource.h \
  fly_sa.h
integrate.o: integrate.c /usr/include/stdio.h /usr/include/features.h \
  /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h \
  /usr/include/gnu/stubs.h /usr/include/gnu/stubs-64.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/stddef.h \
  /usr/include/bits/types.h /usr/include/bits/typesizes.h \
  /usr/include/libio.h /usr/include/_G_config.h /usr/include/wchar.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/stdarg.h \
  /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h \
  /usr/include/stdlib.h /usr/include/sys/types.h /usr/include/time.h \
  /usr/include/endian.h /usr/include/bits/endian.h \
  /usr/include/sys/select.h /usr/include/bits/select.h \
  /usr/include/bits/sigset.h /usr/include/bits/time.h \
  /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h \
  /usr/include/alloca.h /usr/include/math.h /usr/include/bits/huge_val.h \
  /usr/include/bits/mathdef.h /usr/include/bits/mathcalls.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/float.h \
  /usr/include/string.h /usr/include/sys/times.h \
  /home/davidh/trunk/util/error.h /home/davidh/trunk/util/global.h \
  maternal.h integrate.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_errno.h \
  /usr/include/errno.h /usr/include/bits/errno.h \
  /usr/include/linux/errno.h /usr/include/asm/errno.h \
  /usr/include/asm-generic/errno.h /usr/include/asm-generic/errno-base.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_types.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_spline.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_interp.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_inline.h solvers.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_nvector.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_types.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_config.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode_band.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode_direct.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_direct.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_band.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode_spgmr.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode_spils.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_iterative.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_spgmr.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/nvector/nvector_serial.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_dense.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_math.h \
  zygotic.h /usr/include/sys/resource.h /usr/include/bits/resource.h \
  score.h fly_io.h /usr/include/ctype.h ../util/global.h \
  ../util/ioTools.h /usr/include/sys/time.h ../util/global.h \
  ../util/error.h
maternal.o: maternal.c \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/float.h \
  /usr/include/stdlib.h /usr/include/features.h /usr/include/sys/cdefs.h \
  /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h \
  /usr/include/gnu/stubs-64.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/stddef.h \
  /usr/include/sys/types.h /usr/include/bits/types.h \
  /usr/include/bits/typesizes.h /usr/include/time.h /usr/include/endian.h \
  /usr/include/bits/endian.h /usr/include/sys/select.h \
  /usr/include/bits/select.h /usr/include/bits/sigset.h \
  /usr/include/bits/time.h /usr/include/sys/sysmacros.h \
  /usr/include/bits/pthreadtypes.h /usr/include/alloca.h \
  /usr/include/math.h /usr/include/bits/huge_val.h \
  /usr/include/bits/mathdef.h /usr/include/bits/mathcalls.h \
  /usr/include/ctype.h /usr/include/string.h \
  /home/davidh/trunk/util/error.h /home/davidh/trunk/util/global.h \
  maternal.h /usr/include/stdio.h /usr/include/libio.h \
  /usr/include/_G_config.h /usr/include/wchar.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/stdarg.h \
  /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h \
  integrate.h /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_errno.h \
  /usr/include/errno.h /usr/include/bits/errno.h \
  /usr/include/linux/errno.h /usr/include/asm/errno.h \
  /usr/include/asm-generic/errno.h /usr/include/asm-generic/errno-base.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_types.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_spline.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_interp.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_inline.h zygotic.h \
  /usr/include/sys/resource.h /usr/include/bits/resource.h fly_io.h \
  ../util/global.h ../util/ioTools.h /usr/include/sys/time.h \
  ../util/global.h ../util/error.h /home/davidh/trunk/util/ioTools.h
printscore.o: printscore.c /usr/include/math.h /usr/include/features.h \
  /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h \
  /usr/include/gnu/stubs.h /usr/include/gnu/stubs-64.h \
  /usr/include/bits/huge_val.h /usr/include/bits/mathdef.h \
  /usr/include/bits/mathcalls.h /usr/include/stdio.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/stddef.h \
  /usr/include/bits/types.h /usr/include/bits/typesizes.h \
  /usr/include/libio.h /usr/include/_G_config.h /usr/include/wchar.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/stdarg.h \
  /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h \
  /usr/include/stdlib.h /usr/include/sys/types.h /usr/include/time.h \
  /usr/include/endian.h /usr/include/bits/endian.h \
  /usr/include/sys/select.h /usr/include/bits/select.h \
  /usr/include/bits/sigset.h /usr/include/bits/time.h \
  /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h \
  /usr/include/alloca.h /usr/include/string.h /usr/include/unistd.h \
  /usr/include/bits/posix_opt.h /usr/include/bits/confname.h \
  /usr/include/getopt.h /home/davidh/trunk/util/error.h \
  /home/davidh/trunk/util/global.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/float.h integrate.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_errno.h \
  /usr/include/errno.h /usr/include/bits/errno.h \
  /usr/include/linux/errno.h /usr/include/asm/errno.h \
  /usr/include/asm-generic/errno.h /usr/include/asm-generic/errno-base.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_types.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_spline.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_interp.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_inline.h maternal.h \
  maternal.h score.h fly_io.h /usr/include/ctype.h ../util/global.h \
  ../util/ioTools.h /usr/include/sys/time.h ../util/global.h \
  ../util/error.h solvers.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_nvector.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_types.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_config.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode_band.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode_direct.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_direct.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_band.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode_spgmr.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode_spils.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_iterative.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_spgmr.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/nvector/nvector_serial.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_dense.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_math.h \
  zygotic.h /usr/include/sys/resource.h /usr/include/bits/resource.h
savestate.o: savestate.c /usr/include/math.h /usr/include/features.h \
  /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h \
  /usr/include/gnu/stubs.h /usr/include/gnu/stubs-64.h \
  /usr/include/bits/huge_val.h /usr/include/bits/mathdef.h \
  /usr/include/bits/mathcalls.h /usr/include/stdio.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/stddef.h \
  /usr/include/bits/types.h /usr/include/bits/typesizes.h \
  /usr/include/libio.h /usr/include/_G_config.h /usr/include/wchar.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/stdarg.h \
  /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h \
  /usr/include/string.h /usr/include/stdlib.h /usr/include/sys/types.h \
  /usr/include/time.h /usr/include/endian.h /usr/include/bits/endian.h \
  /usr/include/sys/select.h /usr/include/bits/select.h \
  /usr/include/bits/sigset.h /usr/include/bits/time.h \
  /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h \
  /usr/include/alloca.h /usr/include/unistd.h \
  /usr/include/bits/posix_opt.h /usr/include/bits/confname.h \
  /usr/include/getopt.h /home/davidh/trunk/util/error.h \
  /home/davidh/trunk/util/global.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/float.h \
  /home/davidh/trunk/util/random.h fly_io.h /usr/include/ctype.h \
  ../util/global.h ../util/ioTools.h /usr/include/sys/time.h \
  ../util/global.h ../util/error.h maternal.h
score.o: score.c /usr/include/math.h /usr/include/features.h \
  /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h \
  /usr/include/gnu/stubs.h /usr/include/gnu/stubs-64.h \
  /usr/include/bits/huge_val.h /usr/include/bits/mathdef.h \
  /usr/include/bits/mathcalls.h /usr/include/stdlib.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/stddef.h \
  /usr/include/sys/types.h /usr/include/bits/types.h \
  /usr/include/bits/typesizes.h /usr/include/time.h /usr/include/endian.h \
  /usr/include/bits/endian.h /usr/include/sys/select.h \
  /usr/include/bits/select.h /usr/include/bits/sigset.h \
  /usr/include/bits/time.h /usr/include/sys/sysmacros.h \
  /usr/include/bits/pthreadtypes.h /usr/include/alloca.h \
  /usr/include/stdio.h /usr/include/libio.h /usr/include/_G_config.h \
  /usr/include/wchar.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/stdarg.h \
  /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h \
  /usr/include/ctype.h /usr/include/string.h score.h maternal.h \
  /home/davidh/trunk/util/global.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/float.h fly_io.h \
  ../util/global.h ../util/ioTools.h /usr/include/sys/time.h \
  ../util/global.h ../util/error.h integrate.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_errno.h \
  /usr/include/errno.h /usr/include/bits/errno.h \
  /usr/include/linux/errno.h /usr/include/asm/errno.h \
  /usr/include/asm-generic/errno.h /usr/include/asm-generic/errno-base.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_types.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_spline.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_interp.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_inline.h solvers.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_nvector.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_types.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_config.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode_band.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode_direct.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_direct.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_band.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode_spgmr.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode_spils.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_iterative.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_spgmr.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/nvector/nvector_serial.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_dense.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_math.h \
  /home/davidh/trunk/util/ioTools.h
scramble.o: scramble.c /usr/include/stdlib.h /usr/include/features.h \
  /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h \
  /usr/include/gnu/stubs.h /usr/include/gnu/stubs-64.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/stddef.h \
  /usr/include/sys/types.h /usr/include/bits/types.h \
  /usr/include/bits/typesizes.h /usr/include/time.h /usr/include/endian.h \
  /usr/include/bits/endian.h /usr/include/sys/select.h \
  /usr/include/bits/select.h /usr/include/bits/sigset.h \
  /usr/include/bits/time.h /usr/include/sys/sysmacros.h \
  /usr/include/bits/pthreadtypes.h /usr/include/alloca.h \
  /usr/include/stdio.h /usr/include/libio.h /usr/include/_G_config.h \
  /usr/include/wchar.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/stdarg.h \
  /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h \
  /usr/include/string.h /usr/include/unistd.h \
  /usr/include/bits/posix_opt.h /usr/include/bits/confname.h \
  /usr/include/getopt.h /home/davidh/trunk/util/error.h \
  /home/davidh/trunk/util/global.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/float.h maternal.h score.h \
  maternal.h fly_io.h /usr/include/ctype.h ../util/global.h \
  ../util/ioTools.h /usr/include/math.h /usr/include/bits/huge_val.h \
  /usr/include/bits/mathdef.h /usr/include/bits/mathcalls.h \
  /usr/include/sys/time.h ../util/global.h ../util/error.h zygotic.h \
  /usr/include/sys/resource.h /usr/include/bits/resource.h \
  ../util/random.h
solvers.o: solvers.c /usr/lib64/gcc/x86_64-suse-linux/4.3/include/float.h \
  /usr/include/math.h /usr/include/features.h /usr/include/sys/cdefs.h \
  /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h \
  /usr/include/gnu/stubs-64.h /usr/include/bits/huge_val.h \
  /usr/include/bits/mathdef.h /usr/include/bits/mathcalls.h \
  /usr/include/stdlib.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/stddef.h \
  /usr/include/sys/types.h /usr/include/bits/types.h \
  /usr/include/bits/typesizes.h /usr/include/time.h /usr/include/endian.h \
  /usr/include/bits/endian.h /usr/include/sys/select.h \
  /usr/include/bits/select.h /usr/include/bits/sigset.h \
  /usr/include/bits/time.h /usr/include/sys/sysmacros.h \
  /usr/include/bits/pthreadtypes.h /usr/include/alloca.h \
  /usr/include/stdio.h /usr/include/libio.h /usr/include/_G_config.h \
  /usr/include/wchar.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/stdarg.h \
  /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h \
  /usr/include/string.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include-fixed/limits.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include-fixed/syslimits.h \
  /usr/include/limits.h /usr/include/bits/posix1_lim.h \
  /usr/include/bits/local_lim.h /usr/include/linux/limits.h \
  /usr/include/bits/posix2_lim.h /home/davidh/trunk/util/error.h \
  /home/davidh/trunk/util/global.h solvers.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_nvector.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_types.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_config.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode_band.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode_direct.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_direct.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_band.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode_spgmr.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode_spils.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_iterative.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_spgmr.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/nvector/nvector_serial.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_dense.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_math.h \
  maternal.h maternal.h zygotic.h /usr/include/sys/resource.h \
  /usr/include/bits/resource.h integrate.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_errno.h \
  /usr/include/errno.h /usr/include/bits/errno.h \
  /usr/include/linux/errno.h /usr/include/asm/errno.h \
  /usr/include/asm-generic/errno.h /usr/include/asm-generic/errno-base.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_types.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_spline.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_interp.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_inline.h
translate.o: translate.c /usr/include/ctype.h /usr/include/features.h \
  /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h \
  /usr/include/gnu/stubs.h /usr/include/gnu/stubs-64.h \
  /usr/include/bits/types.h /usr/include/bits/typesizes.h \
  /usr/include/endian.h /usr/include/bits/endian.h /usr/include/stdlib.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/stddef.h \
  /usr/include/sys/types.h /usr/include/time.h /usr/include/sys/select.h \
  /usr/include/bits/select.h /usr/include/bits/sigset.h \
  /usr/include/bits/time.h /usr/include/sys/sysmacros.h \
  /usr/include/bits/pthreadtypes.h /usr/include/alloca.h \
  /usr/include/string.h /home/davidh/trunk/util/error.h \
  /home/davidh/trunk/util/global.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/float.h maternal.h \
  /usr/include/stdio.h /usr/include/libio.h /usr/include/_G_config.h \
  /usr/include/wchar.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/stdarg.h \
  /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h score.h \
  fly_io.h ../util/global.h ../util/ioTools.h /usr/include/math.h \
  /usr/include/bits/huge_val.h /usr/include/bits/mathdef.h \
  /usr/include/bits/mathcalls.h /usr/include/sys/time.h ../util/global.h \
  ../util/error.h zygotic.h /usr/include/sys/resource.h \
  /usr/include/bits/resource.h /home/davidh/trunk/util/ioTools.h
unfold.o: unfold.c /usr/include/stdlib.h /usr/include/features.h \
  /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h \
  /usr/include/gnu/stubs.h /usr/include/gnu/stubs-64.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/stddef.h \
  /usr/include/sys/types.h /usr/include/bits/types.h \
  /usr/include/bits/typesizes.h /usr/include/time.h /usr/include/endian.h \
  /usr/include/bits/endian.h /usr/include/sys/select.h \
  /usr/include/bits/select.h /usr/include/bits/sigset.h \
  /usr/include/bits/time.h /usr/include/sys/sysmacros.h \
  /usr/include/bits/pthreadtypes.h /usr/include/alloca.h \
  /usr/include/stdio.h /usr/include/libio.h /usr/include/_G_config.h \
  /usr/include/wchar.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/stdarg.h \
  /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h \
  /usr/include/string.h /usr/include/unistd.h \
  /usr/include/bits/posix_opt.h /usr/include/bits/confname.h \
  /usr/include/getopt.h /usr/include/sys/resource.h \
  /usr/include/bits/resource.h /home/davidh/trunk/util/error.h \
  /home/davidh/trunk/util/global.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/float.h integrate.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_errno.h \
  /usr/include/errno.h /usr/include/bits/errno.h \
  /usr/include/linux/errno.h /usr/include/asm/errno.h \
  /usr/include/asm-generic/errno.h /usr/include/asm-generic/errno-base.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_types.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_spline.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_interp.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_inline.h maternal.h \
  maternal.h solvers.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_nvector.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_types.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_config.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode_band.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode_direct.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_direct.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_band.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode_spgmr.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode_spils.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_iterative.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_spgmr.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/nvector/nvector_serial.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_dense.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_math.h \
  zygotic.h score.h fly_io.h /usr/include/ctype.h ../util/global.h \
  ../util/ioTools.h /usr/include/math.h /usr/include/bits/huge_val.h \
  /usr/include/bits/mathdef.h /usr/include/bits/mathcalls.h \
  /usr/include/sys/time.h ../util/global.h ../util/error.h fly_io.h
zygotic.o: zygotic.c /usr/include/ctype.h /usr/include/features.h \
  /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h \
  /usr/include/gnu/stubs.h /usr/include/gnu/stubs-64.h \
  /usr/include/bits/types.h /usr/include/bits/typesizes.h \
  /usr/include/endian.h /usr/include/bits/endian.h /usr/include/stdio.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/stddef.h \
  /usr/include/libio.h /usr/include/_G_config.h /usr/include/wchar.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/stdarg.h \
  /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h \
  /usr/include/stdlib.h /usr/include/sys/types.h /usr/include/time.h \
  /usr/include/sys/select.h /usr/include/bits/select.h \
  /usr/include/bits/sigset.h /usr/include/bits/time.h \
  /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h \
  /usr/include/alloca.h /usr/include/string.h /usr/include/math.h \
  /usr/include/bits/huge_val.h /usr/include/bits/mathdef.h \
  /usr/include/bits/mathcalls.h /home/davidh/trunk/util/error.h \
  /home/davidh/trunk/util/global.h \
  /usr/lib64/gcc/x86_64-suse-linux/4.3/include/float.h maternal.h \
  solvers.h /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_nvector.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_types.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_config.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode_band.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode_direct.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_direct.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_band.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode_spgmr.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/cvode/cvode_spils.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_iterative.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_spgmr.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/nvector/nvector_serial.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_dense.h \
  /home/davidh/trunk/lib64/sundials-2.5.0/include/sundials/sundials_math.h \
  integrate.h /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_errno.h \
  /usr/include/errno.h /usr/include/bits/errno.h \
  /usr/include/linux/errno.h /usr/include/asm/errno.h \
  /usr/include/asm-generic/errno.h /usr/include/asm-generic/errno-base.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_types.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_spline.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_interp.h \
  /home/davidh/trunk/lib64/gsl-1.14/include/gsl/gsl_inline.h zygotic.h \
  /usr/include/sys/resource.h /usr/include/bits/resource.h fly_io.h \
  ../util/global.h ../util/ioTools.h /usr/include/sys/time.h \
  ../util/global.h ../util/error.h /home/davidh/trunk/util/ioTools.h

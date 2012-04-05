include ./common.mk

#
# The following definitions contain items in the strict order of dependencies.
# Please do not change it to arbitrary order (even if it is alphabetical)
#

TARGET_STATIC_LIBS = ./apps/avxframeserver/frameserverlib

TARGET_SHARED_LIBS  = 				\
		./avxcommon                     \
		../avxsynth/builtinfunctions	\
		../../avxsynth/core		\
		../../plugins/avxffms2		\
		../../plugins/autocrop		\
		../../plugins/avxsubtitle	\
		../../plugins/avxframecapture

TARGET_APPS  	= ./apps/avxframeserver/frameserverapp	\
          ../../../apps/AVXEdit

default:
	-for d in $(TARGET_STATIC_LIBS);	\
	do					\
	   cd $$d; make rebuild;		\
	done;										


	-for d in $(TARGET_SHARED_LIBS); 	\
	do					\
	   cd $$d; make deploy;			\
	done;

	-for d in $(TARGET_APPS); 		\
	do					\
	   cd $$d; make rebuild;		\
	done;

clean:
	echo "Removing all binaries\n";		\
	rm -rf $(AVXSYNTH_DEPLOY_ROOT)/*; 	\
						
	-for d in $(TARGET_STATIC_LIBS);	\
	do					\
	   cd $$d; make clean;			\
	done;										


	-for d in $(TARGET_SHARED_LIBS); 	\
	do					\
	   cd $$d; make clean; 			\
	done;

	-for d in $(TARGET_APPS); 		\
	do					\
	   cd $$d; make clean; 			\
	done;

rebuild:
	-for d in $(TARGET_STATIC_LIBS);	\
	do					\
	   cd $$d; make clean; make rebuild;	\
	done;										


	-for d in $(TARGET_SHARED_LIBS); 							\
	do										\
	   cd $$d; make clean; make deploy;						\
	done;

	-for d in $(TARGET_APPS); 							\
	do										\
	   cd $$d; make clean; make rebuild;						\
	done;

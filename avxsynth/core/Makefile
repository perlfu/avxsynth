include ../../config.mak

ifeq ($(SRCPATH),.)
        SRCPATH=../..
endif

SRC_PATH = $(SRCPATH)/avxsynth/core/src
OBJ_PATH = ./src

OBJECTS = \
	$(OBJ_PATH)/audio/convertaudio.o                        \
	$(OBJ_PATH)/core/avxsynth_c.o                           \
	$(OBJ_PATH)/core/avxsynth.o                             \
	$(OBJ_PATH)/core/cache.o                                \
	$(OBJ_PATH)/core/main.o                                 \
	$(OBJ_PATH)/core/memcpy_amd.o                           \
	$(OBJ_PATH)/core/plugins.o                              \
	$(OBJ_PATH)/core/parser/expression.o                    \
	$(OBJ_PATH)/core/parser/script.o                        \
	$(OBJ_PATH)/core/parser/scriptparser.o                  \
	$(OBJ_PATH)/core/parser/tokenizer.o                     \
	$(OBJ_PATH)/filters/conditional/conditional.o           \
	$(OBJ_PATH)/filters/conditional/conditional_functions.o \
	$(OBJ_PATH)/filters/conditional/conditional_reader.o    \
	$(OBJ_PATH)/filters/debug.o                             \
	$(OBJ_PATH)/filters/text-overlay.o                      \
	$(OBJ_PATH)/sources/avi/cpuaccel.o                      \
	$(OBJ_PATH)/windowsPorts.o

INCLUDES = \
	-I$(SRCPATH)/avxsynth/common/include         \
	-I$(SRCPATH)/avxsynth/common/include/audio   \
	-I$(SRCPATH)/avxsynth/common/include/core    \
	-I$(SRCPATH)/avxsynth/common/include/filters \
	-I$(SRCPATH)/avxsynth/builtinfunctions       \
	-I$(SRCPATH)/avxcommon/include               \
	-I$(SRCPATH)/include                         \
	-I$(SRC_PATH)

LIBS = -L../../avxcommon -lavxcommon -L../builtinfunctions -lavxbtinfncs

DEFINES = -DAVXSYNTH_PLUGIN_RELATIVE_PATH='".AVXSynth/plugins"'

EXECUTABLE = libavxsynth$(SONAME)

$(EXECUTABLE): $(OBJECTS)
	$(LD) $(EXECUTABLE) $(OBJECTS) $(LIBS) $(LDFLAGS) $(LDFLAGS_DYN)

$(OBJ_PATH)/%.o: $(SRC_PATH)/%.cpp
	$(CXX) $(CFLAGS) $(CFLAGS_DYN) $(DEFINES) $(INCLUDES) -c $< -o $@

clean:
	rm -f $(OBJECTS)

install:
	install -D $(EXECUTABLE) $(libdir)/$(EXECUTABLE)

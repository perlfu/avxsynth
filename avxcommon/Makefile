include ../config.mak

ifeq ($(SRCPATH),.)
        SRCPATH=..
endif

SRC_PATH = $(SRCPATH)/avxcommon/src
OBJ_PATH = ./src

OBJECTS = \
	$(OBJ_PATH)/AvxTextRender.o \
	$(OBJ_PATH)/Path.o          \
	$(OBJ_PATH)/avxlog.o

INCLUDES = \
	-I$(SRCPATH)/avxcommon/include \
	-I$(SRCPATH)/include           \
	$(PANGOCAIRO_INCLUDES)         \
        $(LOG4CPP_INCLUDES)

LIBS = $(PANGOCAIRO_LIBS) $(LOG4CPP_LIBS)

EXECUTABLE = libavxcommon$(SONAME)

$(EXECUTABLE): $(OBJECTS)
	$(LD) $(EXECUTABLE) $(OBJECTS) $(LIBS) $(LDFLAGS) $(LDFLAGS_DYN)

$(OBJ_PATH)/%.o: $(SRC_PATH)/%.cpp
	$(CXX) $(CFLAGS) $(CFLAGS_DYN) $(INCLUDES) -c $< -o $@

clean:
	rm -f $(OBJECTS)

install:
	install -D $(EXECUTABLE) $(libdir)/$(EXECUTABLE)

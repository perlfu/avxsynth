include ../../config.mak

ifeq ($(SRCPATH),.)
        SRCPATH=../..
endif

SRC_PATH = $(SRCPATH)/plugins/avxsubtitle/src
OBJ_PATH = ./src

OBJECTS = \
	$(OBJ_PATH)/AvxSubtitle.o    \
	$(OBJ_PATH)/CaptionEntry.o   \
	$(OBJ_PATH)/CaptionList.o    \
	$(OBJ_PATH)/SrtParser.o      \
	$(OBJ_PATH)/SubtitleParser.o \
	$(OBJ_PATH)/Utils.o

INCLUDES = \
	-I$(SRCPATH)/avxcommon/include \
	-I$(SRCPATH)/include

LIBS = -L../../avxcommon -lavxcommon

EXECUTABLE = libavxsubtitle$(SONAME)

$(EXECUTABLE): $(OBJECTS)
	$(LD) $(EXECUTABLE) $(OBJECTS) $(LIBS) $(LDFLAGS) $(LDFLAGS_DYN)

$(OBJ_PATH)/%.o: $(SRC_PATH)/%.cpp
	$(CXX) $(CFLAGS) $(CFLAGS_DYN) $(INCLUDES) -c $< -o $@

clean:
	rm -f $(OBJECTS)

install:
	install -D $(EXECUTABLE) $(pluginsdir)/$(EXECUTABLE)

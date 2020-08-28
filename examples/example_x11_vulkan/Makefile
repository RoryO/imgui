EXE = example_x11_vulkan
SOURCES = ../imgui_impl_x11.cpp ../imgui_impl_vulkan.cpp
SOURCES += ../../imgui.cpp ../../imgui_demo.cpp ../../imgui_draw.cpp ../../imgui_widgets.cpp
OBJS = $(addsuffix .o, $(basename $(notdir $(SOURCES))))
CXXFLAGS = -I .. -I ../..
LIBS = `pkg-config --libs xcb xcb-keysyms xcb-xfixes xcb-xkb xcb-cursor vulkan`

OUTDIR = Debug
CXXFLAGS += -g

%.o:$(SOURCES)
	$(CXX) $(CXXFLAGS) -c -o $(OUTDIR)/$@ $<

$(EXE): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $(OUTDIR)/$(EXE) main.cpp $(OUTDIR)/*.o -lm -lstdc++ -lrt $(LIBS)

all: debug
debug: $(EXE)
release: $(EXE)

clean:
	rm -f Debug/*
	rm -f Release/*

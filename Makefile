################################################################################
#
# boxfit & dump_box Makefile
# wykys 24.12.2023
#
################################################################################

# Build dir
BUILD_DIR = build

# Compiler
CXX = mpic++

# Optimalizations: -O0, -O1, -O2, -O3, ...
OPT = -O3

# Linker flags (some example options):
LDFLAGS = \
    -lm -lgomp -lhdf5 -lmpi_cxx \
    -L /usr/lib \
    -L /lib/x86_64-linux-gnu/hdf5/serial \
    -L /lib/x86_64-linux-gnu/openmpi/lib

# Compiler flags
CPPFLAGS = \
    -g $(OPT) -Wall -fopenmp \
    -I inc \
    -I /usr/include/hdf5/serial \
    -I /lib/x86_64-linux-gnu/openmpi/include

################################################################################

BOXFIT_CPP = \
    BM.cpp \
    box.cpp \
    boxfit.cpp \
    coords.cpp \
    eds_2D_regular.cpp \
    extramath.cpp \
    fluid.cpp \
    fluid_special.cpp \
    flux.cpp \
    flux_from_box.cpp \
    numerical.cpp \
    observer.cpp \
    param_IO.cpp \
    parse.cpp \
    physics.cpp \
    radiation.cpp

BOXFIT_O = $(addprefix $(BUILD_DIR)/,$(notdir $(BOXFIT_CPP:.cpp=.o)))

################################################################################

DUMP_BOX_CPP = \
    BM.cpp \
    box.cpp \
    coords.cpp \
    dump_box.cpp \
    extramath.cpp \
    fluid.cpp \
    parse.cpp \
    physics.cpp

DUMP_BOX_O = $(addprefix $(BUILD_DIR)/,$(notdir $(DUMP_BOX_CPP:.cpp=.o)))

################################################################################

all: boxfit dump_box

$(BUILD_DIR)/%.o: src/%.cpp | $(BUILD_DIR)
	$(CXX) -c $(CPPFLAGS) $< -o $@

boxfit: $(BOXFIT_O) | $(BUILD_DIR)
	$(CXX) -o $(BUILD_DIR)/$@ $(BOXFIT_O) $(LDFLAGS)

dump_box: $(DUMP_BOX_O) | $(BUILD_DIR)
	$(CXX) -o $(BUILD_DIR)/$@ $(DUMP_BOX_O) $(LDFLAGS)

$(BUILD_DIR):
	mkdir $@

clean:
	rm -rf $(BUILD_DIR)

clean_analysis_results:
	rm -f *.log
	rm -f lightcurve.txt

deps:
	sudo apt install -y libhdf5-dev libopenmpi-dev


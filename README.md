# [boxfit](https://github.com/wykys/boxfit)

This is a fork of the https://github.com/hveerten/boxfit project in which I modified the project structure to make it easier to work with.

The BOXFIT gamma-ray burst afterglow fit and light curve generator code is a numerical implementation of the work described in [Van Eerten+ 2012](https://ui.adsabs.harvard.edu/abs/2012ApJ...749...44V/abstract). The code is capable of calculating light curves and spectra for arbitrary observer times and frequencies and of performing (broadband) data fits using the downhill simplex method combined with simulated annealing. The flux value for a given observer time and frequency is a function of various variables that set the explosion physics (energy of the explosion, circumburst number density and jet collimation angle), the radiative process (magnetic field generation efficiency, electron shock-acceleration efficiency and synchrotron power slope for the electron energy distribution) and observer position (distance, redshift and angle).

The dynamics of the afterglow blast wave have been calculated in a series of 114 high-resolution two-dimensional jet simulations performed with the RAM adaptive-mesh refinement relativistic hydrodynamics (RHD) code [Zhang+ 2006](https://ui.adsabs.harvard.edu/abs/2006ApJS..164..255Z/abstract). The results of these calculations have been compressed and stored in a series of `box' data files and BOXFIT calculates the fluid state for arbitrary fluid variables using interpolations between the data files and analytical scaling relations. End-users of BOXFIT do not need to perform RHD simulations themselves.

The code can be run both in parallel and on a single core. Because a data fit takes many iterations, this is best done in parallel. Single light curves and spectra can readily be done on a single core. Use of the code is completely free, but we request that [Van Eerten+ 2012](https://ui.adsabs.harvard.edu/abs/2012ApJ...749...44V/abstract) be cited in scientific publications using the fitting algorithms from BOXFIT. This also applies to derived code, plus possible additional citations depending on the modifications.

## Getting Started

A more detailed guide to working with the code is provided by the guide (pdf) included with installation.

### Prerequisites

BOXFIT makes use of the [hdf5](https://www.hdfgroup.org/solutions/hdf5/) file format, and requires the developer libraries for hdf5 to be installed on the system. Parallel BOXFIT requires MPI libraries to be installed.

### Installing

First clone the repository:

```
git clone https://github.com/wykys/boxfit
```

The cloned repository contains a Makefile that is used to compile the project. The following command will change to the project directory.

```bash
cd boxfit/
```

First you need to install the required packages, the tutorial was tested on __Ubuntu 22.04__.

```bash
make deps
```

Then you can proceed to the compilation itself, it is possible to compile all tools or only some.

```bash
# compiling all programs
make

# will only compile boxfit
make boxfit

# will only compile dump_box
make dump_box
```

If the compilation is successful, the corresponding binaries are created in the `boxfit/build` directory.

BOXFIT makes use of a series of BOX files containing compressed RHD simulation data. These can be found on the [afterglowlibrary](https://cosmo.nyu.edu/afterglowlibrary/boxfit2011.html) website. Download the files and store them on your local machine, e.g. under the `boxfit/data` directory

### Running the code

In the directory `boxfit/settings` the file `boxfitsettings.txt` can be found. Copy this file along with the binary to your local output directory. Update the settings file to point to the correct paths before running BOXFIT. More detailed instructions can be found in the pdf manual.

Scripts are available to run programs that take care of calling `mpirun`.

```bash
# The following script is available to run boxfit
./boxfit.sh "your args..."

# The following script is available to run dump_box
./dump_box.sh "your args..."
```

## Authors

* **Hendrik van Eerten** - *University of Bath* - [github](https://github.com/hveerten) - [University of Bath](https://researchportal.bath.ac.uk/en/persons/hendrik-van-eerten)


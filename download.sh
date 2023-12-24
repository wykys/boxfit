#!/usr/bin/env bash
# A script that automatically downloads *.h5 files for simulation
# wykys 24.12.2023

YELLOW='\033[1;33m'
GREEN='\033[1;32m'
CYAN='\033[1;36m'
RED='\033[1;31m'
NC='\033[0m'

function download()
{
    url=$1
    file=$(echo "$url" | awk -F '/' '{print $NF}')
    path=$(pwd)

    if [ -e $file ]; then
        echo -e "${GREEN}INFO: File ${YELLOW}$path/$file${GREEN} already exists"
        echo -e "${GREEN}INFO: Download from ${CYAN}$url${GREEN} will be skipped${NC}"
    else
        echo -e "${GREEN}INFO: Downloading ${YELLOW}$file${GREEN} from ${CYAN}$url${NC}"
        wget --no-check-certificate $url
    fi
}

###############################################################################

mkdir -p data/boxISM
cd data/boxISM

download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_00.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_01.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_02.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_03.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_04.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_05.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_06.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_07.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_08.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_09.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_10.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_11.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_12.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_13.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_14.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_15.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_16.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_17.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_18.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_19.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_20.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_21.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_22.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_23.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_24.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_25.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_26.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_27.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_28.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_29.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_30.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_31.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_32.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxISM_33.h5

###############################################################################

cd ..
mkdir -p boxboostmedwind
cd boxboostmedwind

download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_00.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_01.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_02.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_03.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_04.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_05.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_06.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_07.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_08.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_09.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_10.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_11.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_12.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_13.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_14.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_15.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_16.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_17.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_18.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_19.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_20.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_21.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_22.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_23.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_24.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_25.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_26.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_27.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_28.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_29.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_30.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_31.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_32.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostmedwind_33.h5

###############################################################################

cd ..
mkdir -p boxboostISM
cd boxboostISM

download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostISM_00.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostISM_01.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostISM_02.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostISM_03.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostISM_04.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostISM_05.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostISM_06.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostISM_07.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostISM_08.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostISM_09.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostISM_10.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostISM_11.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostISM_12.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostISM_13.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostISM_14.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostISM_15.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostISM_16.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostISM_17.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostISM_18.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostISM_19.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostISM_20.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostISM_21.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostISM_22.h5

###############################################################################

cd ..
mkdir -p boxboostwind
cd boxboostwind

download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostwind_00.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostwind_01.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostwind_02.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostwind_03.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostwind_04.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostwind_05.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostwind_06.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostwind_07.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostwind_08.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostwind_09.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostwind_10.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostwind_11.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostwind_12.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostwind_13.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostwind_14.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostwind_15.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostwind_16.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostwind_17.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostwind_18.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostwind_19.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostwind_20.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostwind_21.h5
download https://cosmo.nyu.edu/afterglowlibrary/boxfitdatav2/boxboostwind_22.h5

#!/usr/bin/env bash
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
        echo -e "${GREEN}INFO: Downloading ${YELLOW}$file${GREEN} from ${CYAN}$url{NC}"
        wget --no-check-certificate $url
    fi
}

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

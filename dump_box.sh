#!/usr/bin/env bash
# wykys 24.12.2023

BUILD_DIR=build
APP=dump_box

YELLOW='\033[1;33m'
GREEN='\033[1;32m'
CYAN='\033[1;36m'
RED='\033[1;31m'
NC='\033[0m'

if [ -e $BUILD_DIR/$APP ]; then
    echo -e "${GREEN}INFO: Running ${YELLOW}$BUILD_DIR/$APP${GREEN} with params: ${CYAN}$@${NC}"
    mpirun build/dump_box $@
else
    echo -e "${RED}ERROR: The application$ ${YELLOW}$BUILD_DIR/$APP${RED} does not exist!${NC}"
    echo -e "${GREEN}INFO: You can try to compile the application with the following command:${CYAN} make $APP${NC}"
fi



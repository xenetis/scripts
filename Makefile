# MAKEFILE https://github.com/xenetis/scripts
.SILENT: default

default:
	echo "\
    - make install brave \n\
    - make install docker \n\
    - make install google-chrome \n\
    - make install opensnitch \n\
    - make install virtualbox \n\
	"
	sudo apt install git make curl lsb-release -y

install:
	./$(filter-out $@,$(MAKECMDGOALS))/install.sh

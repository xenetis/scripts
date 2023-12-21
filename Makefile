# MAKEFILE https://github.com/xenetis/scripts
.SILENT: default

default:
	echo "\
    - make install brave \n\
    - make install dbeaver \n\
    - make install docker \n\
    - make install google-chrome \n\
    - make install jetbrains-toolbox \n\
    - make install k6 \n\
    - make install minecraft \n\
    - make install opensnitch \n\
    - make install virtualbox \n\
    - make install zenmap \n\
	"
	sudo apt install git make curl lsb-release gpg -y

install:
	./$(filter-out $@,$(MAKECMDGOALS))/install.sh

uninstall:
	./$(filter-out $@,$(MAKECMDGOALS))/uninstall.sh

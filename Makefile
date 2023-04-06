# MAKEFILE https://github.com/xenetis/scripts
.SILENT: default

default:
	echo "\
	- 'install <application>' example: make install opensnitch \n\
	"

install:
	./$(filter-out $@,$(MAKECMDGOALS))/install.sh

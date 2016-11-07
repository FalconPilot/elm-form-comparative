# Elm compare makefile

help:
	@echo "\n-- MAKEFILE USAGE\n"
	@echo "build  : Compile the elm project"
	@echo "clear  : Delete elm dependancies"
	@echo ""

build:
	@elm-make app.elm --output=app-elm.js

clear:
	@rm -rf elm-stuff

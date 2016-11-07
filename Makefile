# Elm compare makefile

help:
	@echo "\n-- MAKEFILE USAGE\n"
	@echo "test   : Compile and launch the project with Elm-reactor"
	@echo "build  : Only compile the project"
	@echo "clear  : Delete dependancies"
	@echo ""

test:
	@make build
	@elm-reactor

build:
	@elm-make app.elm --output=app-elm.js

clear:
	@rm -rf elm-stuff

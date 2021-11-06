# =================================
# Variables                       #
# =================================
CG=\033[0;36m#..........green color
CP=\033[0;35m#...........pink color
CF=\033[0;33m#...........pink color
NC=\033[0m#................no color
SPRINT=1.0.0#...............Version
COMMANDS=${CP}Commands${NC}
DATE=`date +%Y-%m-%d-%H.%M.%S`
define ANNOUNCE_BODY
    __  ____ __          __   ________          ____                 _
   /  |/  (_) /___ _____/ /  / ____/ /_  ____  / __/________ _____  (_)
  / /|_/ / / / __ `/ __  /  / / __/ __ \/ __ \/ /_/ ___/ __ `/ __ \/ /
 / /  / / / / /_/ / /_/ /  / /_/ / / / / /_/ / __/ /  / /_/ / / / / /
/_/  /_/_/_/\__,_/\__,_/   \____/_/ /_/\____/_/ /_/   \__,_/_/ /_/_/
endef
export ANNOUNCE_BODY
#==================================
# Start Program                   #
#==================================
help:
	@echo "${CG}"
	@echo "$$ANNOUNCE_BODY"
	@echo "${NC}"
	@printf " ${CG}Symfony 4.4 + Docker"
	@echo ""
	@echo " ------------------------------------------------------------"
	@echo " use the command name provided in list below"
	@printf " ${CF}for example : ${NC}make ${CP}up${NC}"
	@echo " "
	@echo " ---------------------------------------------------------------------------------------------------------"
	@echo " | ## | ${COMMANDS}  				| Description                          								 "
	@echo " ---------------------------------------------------------------------------------------------------------"
	@echo " | 01 | build					| Build fresh images													 "
	@echo " | 02 | up					| Run server														 		 "
	@echo " | 03 | down					| Down server									 						     "
	@echo " | 04 | logs					| Show docker logs															 "
	@echo " | 05 | composer_install			| Install bundles and create vendor folder								 "
	@echo " ---------------------------------------------------------------------------------------------------------"

build:
	sudo docker-compose build --pull --no-cache

up:
	sudo docker-compose up -d

down:
	sudo docker-compose down --remove-orphans

logs:
	sudo docker-compose logs -f

composer_install:
	sudo docker-compose exec php composer install

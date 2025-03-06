##
## EPITECH PROJECT, 2024
## B-FUN-400-TLS-4-1-wolfram
## File description:
## Makefile
##

BLUE=\033[0;34m
LBLUE=\033[1;34m
WHITE=\033[1;37m
LRED=\033[1;31m
RED=\033[0;31m
GREEN=\033[0;32m
YELLOW=\033[1;33m
NC=\033[0m
PURPLE=\033[1;35m

NAME = wolfram

SRC = src/*.hs \
      app/*.hs \

$(NAME):
	@echo -e "$(YELLOW)■-■-■ COMPILATION GOOD ■-■-■$(NC)"
	stack build
	@cp $(shell stack path --local-install-root)/bin/$(NAME)-exe ./$(NAME)
	@echo -e "$(GREEN)■-■-■-■-■-■ GOOD ■-■-■-■-■$(NC)"

all : $(NAME)

clean :
	rm -f src/*.hi src/*.o app/*.hi app/*.o
	stack clean
	@echo -e "$(GREEN)CLEAN$(NC)"

fclean : clean
	@echo -e "$(RED)CLEAN -> $(NAME)...$(NC)"
	rm -f $(NAME)
	@echo -e "$(PURPLE)■-■-■-■-■-■-■ CLEAN ■-■-■-■-■-■-■$(NC)"

re : fclean all

CXX			= g++
CXXFLAGS	= -g -O0 -Wall -Wextra -Werror -Wno-sign-compare -pedantic-errors -MMD -MP -std=c++14
LDFLAGS		= -lm
SRC			= main.cpp
EXE			= a.out
DEP			= a.d

.PHONY: all clean

all: $(EXE)

clean:
	rm -f $(EXE) $(DEP)

$(EXE): $(SRC)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) -o $@ $^

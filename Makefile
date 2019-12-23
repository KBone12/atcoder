MAKEFLAGS	+= --jobs=3

CXX			= g++
CXXFLAGS	= -g -O0 -Wall -Wextra -Werror -pedantic-errors -MMD -MP -std=c++14
LDFLAGS		= -lm
SOURCES		= $(wildcard *.cpp)
EXES		= $(SOURCES:.cpp=)
DEPS		= $(SOURCES:.cpp=.d)

.PHONY: all clean

all: $(EXES)

clean:
	rm -f $(EXES) $(DEPS)

%: %.c
	$(CXX) $(CXXFLAGS) $(LDFLAGS) -o $@ -c $^

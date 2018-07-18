# Variables
CCXX = g++
STD = -std=c++14
SCRS = $(wildcard *.cpp)
OBJS =$(SCRS: .cpp = .o)
CXXFLAGS = -Wall -Wextra -Werror -Wpedantic
NAME =-o $@

#Rules
modernDebug.o: *.cpp *.hpp
    $(CCXX) $(OBJS) $(STD) $(CXXFLAGS) $(NAME) -g
    
modernRelese.o: *.cpp *.hpp
    $(CCXX) $(OBJS) $(STD) $(CXXFLAGS) $(NAME) -03
clean:
    rm $(OBJS)

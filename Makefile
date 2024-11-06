# Version 1
# hello_v1: main.cpp factorial.cpp print_hello.cpp
# 	g++ -o hello_v1 main.cpp factorial.cpp print_hello.cpp

# Version 2
# CXX = g++
# TARGET = hello_v2
# OBJ = main.o factorial.o print_hello.o

# $(TARGET): $(OBJ)
# 	$(CXX) -o $(TARGET) $(OBJ)

# main.o: main.cpp
# 	$(CXX) -c main.cpp

# factorial.o: factorial.cpp
# 	$(CXX) -c factorial.cpp

# print_hello.o: print_hello.cpp
# 	$(CXX) -c print_hello.cpp

# Version 3
# $@ -> target	$< -> first dependency	$^ -> all dependencies
CXX = g++
TARGET = hello_v3
OBJ = main.o factorial.o print_hello.o

CFLAGS = -c -Wall

$(TARGET): $(OBJ)
	$(CXX) -o $@ $^

%.o: %.cpp
	$(CXX) $(CFLAGS) $< -o $@

.PHONY: clean
clean:
	rm -f *.o $(TARGET)
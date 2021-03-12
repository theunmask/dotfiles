

%: %.cc
	g++ -std=c++17 -Wall -Wshadow -Wextra -DLOCAL -o $@ $< -DLOCAL -fsanitize=address -fsanitize=undefined -D__GLIBCXX_DEBUG -pedantic 

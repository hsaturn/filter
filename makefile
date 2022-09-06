all:
	g++ -std=c++14 filter.cpp -o filter

run: all
	./filter data.in

view: all
	./filter data.in -s | feedgnuplot --monotonic --points --domain --lines --exit

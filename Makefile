all: harness-1 harness-2

harness-1:
	clang++ -o harness-1 harness-1.cpp -L snappy/build -l snappy -I snappy -I snappy/build -std=c++11 -fsanitize=address

harness-2:
	clang++ -o harness-2 harness-2.cpp -L snappy/build -l snappy -I snappy -I snappy/build -std=c++11 -fsanitize=address

clean:
	rm -rf harness-1 harness-2

distclean:
	rm -rf snappy
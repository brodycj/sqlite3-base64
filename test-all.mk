include test-dependencies.mk

all: test-all

test-all: all-test-dependencies
	cc test-base64-encode.c sqlite3_base64.c $(TEST_SQLITE3) $(TEST_LIBB64_CENCODE) $(TEST_INCLUDE_FLAGS) -o test-base64-encode.out
	./test-base64-encode.out

test-clean: clean-test-dependencies
	rm -rf ./test*.out

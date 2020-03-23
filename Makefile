
port = 8092

# Run the server.
#
run:
	PORT=$(port) node index.js

# Run the tests for the /test/random API.  This assumes that the server is running.
#
test-random:
	PORT=$(port) bash test-random.sh

# Start the server, run the tests for the /test/random API and exit.
#
run-test-random:
	PORT=$(port) node index.js test-random

.PHONY: run
.PHONY: test-random
.PHONY: run-test-random

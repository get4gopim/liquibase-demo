#! /bin/bash
checkIfFailed() {
	if [[ $? -ne 0 ]]; then
		echo ""
		echo "*** ERROR: Error ocurred while building database."
		exit 1
	fi
}
./build-database.sh
checkIfFailed
mvn process-resources -Pupdate-dev-database



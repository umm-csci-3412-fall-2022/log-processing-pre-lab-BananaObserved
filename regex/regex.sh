run_regex(){
	gawk 'match($0, /((\<[A-Z]\w+)|(\<(\w+\.)+))[.,]? (My favorite sandwich is )?([^.,]*)\.?$/, groups) {print "1. " groups[1] "\n2. " groups[6] "\n"}' "$1_input.txt" > "$1_output.txt"
}

run_regex "r0"
run_regex "r1"
run_regex "r2"

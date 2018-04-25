evolve <- function(state, neigb) {
	if (neigb %in% c(2,3) && state == "alive") return("alive")
	if (neigb < 2 && state == "alive") return("dead")
	if (neigb > 2 && state == "alive") return("dead")
	if (neigb == 3 && state == "dead") return("alive")
	return("dead")
}

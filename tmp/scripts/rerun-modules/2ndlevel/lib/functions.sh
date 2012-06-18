#
# common shell functions for $NAME commands
#

#
# colorizing functions -
#

# bold - bold the given text
bold() { echo -e "\033[1m$*\033[0m" ; reset ; }
# reset the terminal
reset () { tput sgr0 ; }

#
# error handling functions -
#

# print error message and exit
rerun_die() {
	[[ "$RERUN_COLOR" == "true" ]] && bold "ERROR: $*" >&2 || echo "ERROR: $*" >&2
	exit 1
}

# print USAGE and exit
rerun_option_error() {
    [ -z "$USAGE"  ] && echo "$USAGE" >&2
    [ -z "$SYNTAX" ] && echo "$SYNTAX $*" >&2
    exit 2
}

# check option has its argument
rerun_option_check() {
    [ "$1" -lt 2 ] && rerun_option_error
}


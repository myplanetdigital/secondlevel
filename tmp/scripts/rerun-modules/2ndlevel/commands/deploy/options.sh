# generated by stubbs:add-option
# Sun 17 Jun 2012 23:56:29 EDT

# print USAGE and exit
rerun_option_error() {
    [ -z "$USAGE"  ] && echo "$USAGE" >&2
    [ -z "$SYNTAX" ] && echo "$SYNTAX $*" >&2
    return 2
}

# check option has its argument
rerun_option_check() {
    [ "$1" -lt 2 ] && rerun_option_error
}

# options: [destination]
while [ "$#" -gt 0 ]; do
    OPT="$1"
    case "$OPT" in
          -d|--destination) rerun_option_check $# ; DESTINATION=$2 ; shift ;;
        # unknown option
        -?)
            rerun_option_error
            ;;
        # end of options, just arguments left
        *)
          break
    esac
    shift
done

# If defaultable options variables are unset, set them to their DEFAULT
[ -z "$DESTINATION" ] && DESTINATION=acquia
# Check required options are set
[ -z "$DESTINATION" ] && { echo "missing required option: --destination" ; return 2 ; }
#
return 0

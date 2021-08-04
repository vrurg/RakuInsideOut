use v6;
unit module CTime0;

sub MONKEY-SEE-NO-EVAL {
    note "monkey sees nothing!";
    True
}
# At this point MONKEY-SEE-NO-EVAL is an object without code at compile time

sub foo($code) is export {
    EVAL $code;
}

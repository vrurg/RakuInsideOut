use v6;
# Undefined vs. defined
my Int $counter;

say "WHAT : ", $counter.WHAT;
say "WHICH: ", $counter.WHICH;

say "-- init";

$counter = 42;

say "WHAT : ", $counter.WHAT;
say "WHICH: ", $counter.WHICH;

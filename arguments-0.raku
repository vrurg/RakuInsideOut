use v6;
use nqp;

sub foo($a) {
    say "arg: ", $a.VAR.^name, " ", nqp::objectid($a.VAR);
}

say "> Int: ";
foo(42);
my $bar = 13;
say "> Scalar: ";
foo($bar);

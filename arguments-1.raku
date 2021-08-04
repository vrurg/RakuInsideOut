use v6;

sub foo($a) {
    $a = 1;
}

my $bar = 13;
say "> Scalar: ";
foo($bar);

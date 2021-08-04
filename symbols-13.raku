use v6;

# A mutable list??
my $foo = 42;
my $l = (1, 2, $foo, 4, 5);

say $l;

$l[2] = pi;
say $l;

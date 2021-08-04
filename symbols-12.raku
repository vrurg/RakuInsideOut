use v6;

# List is immutable
my $l = (1, 2, 3, 4, 5);

say $l.WHICH;
$l[2] = pi;

use v6;

# Container in a list is immutable, but it's content is not
my $foo = 42;
my $l = (1, 2, $foo, 4, 5);

say $l;

$foo = pi;
say $l;
say "[2]: ", $l[2].VAR.WHICH, "\nfoo: ", $foo.VAR.WHICH;

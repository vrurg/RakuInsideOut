use v6;

# List itemization
say (1,2,3).^name;

my $foo = (1,2,3);

say $foo.raku;
say $foo.^name;

# Hash itemization
$foo = %(a => 1, b => 2);
say $foo.raku;

use v6;

my $foo = 1;
# Equivalent to my $sym := $foo;
my \sym = $foo;

sym = "via sym";
say $foo;

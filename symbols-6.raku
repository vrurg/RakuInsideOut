use v6;

# Array itemization
my @a = 1,2,3,4;
my $foo = @a;

say 'foo: ', $foo.raku;
say '     ', $foo.VAR.WHICH;
say '     ', $foo.WHICH;
say '@a : ', @a.raku;
say '     ', @a.VAR.WHICH;
say '     ', @a.WHICH;

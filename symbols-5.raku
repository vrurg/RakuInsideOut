use v6;

my @a = 1,2,3,4;
my $foo = @a;

say 'foo: ', $foo;
say '     ', $foo.VAR.WHICH;
say '@a : ', @a;
say '     ', @a.VAR.WHICH;

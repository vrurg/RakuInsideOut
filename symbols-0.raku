use v6;

# Code from binding-0.raku
my $foo = 13;
my $bar := $foo;
my $baz = $foo;

say "1. foo: ", $foo.VAR.WHICH, " is ", $foo;
say "   bar: ", $bar.VAR.WHICH, " is ", $bar;
say "   baz: ", $baz.VAR.WHICH, " is ", $baz;

$foo = π;
say "2. foo: ", $foo.VAR.WHICH, " is ", $foo;
say "   bar: ", $bar.VAR.WHICH, " is ", $bar;
say "   baz: ", $baz.VAR.WHICH, " is ", $baz;

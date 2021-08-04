use v6;

# Is equivalent to $arg is raw
sub foo(\arg) {
    say "arg container: ", arg.VAR.WHICH;
    arg *= 2;
}

my $foo = 16;
say "foo container: ", $foo.VAR.WHICH;
foo($foo);
say "foo after: ", $foo;

foo 13;

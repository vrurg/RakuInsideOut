use v6;

sub foo($a is rw) {
    say "arg: ", $a.VAR.WHICH;
    $a = 42;
}

say "--- \$v";
my $v = π;
say '$v container: ', $v.VAR.WHICH, " with ", $v;
foo($v);
say '$v after foo(): ', $v;

say "--- π";
say "the constant is: ", π.VAR.WHICH;
foo(π);

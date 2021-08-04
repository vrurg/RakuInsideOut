use v6;

sub baz { say "DYN: ", $*FOO; }
sub bar { baz }
sub foo {
    my $*FOO = 42;
    bar;
}

foo; # This works
bar; # This fails

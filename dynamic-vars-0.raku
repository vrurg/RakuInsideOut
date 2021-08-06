use v6;

sub baz { say "DYN: ", $*FOO; }
sub bar { baz }
sub foo {
    my $*FOO = 42;
    bar;
}

say "--- via foo";
foo; # This works
say "--- via bar";
bar; # This fails

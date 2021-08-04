use v6;

# Single argument rule
my $foo = [1, 2, 3];

say '--- @$foo';
for @$foo -> $elem {
    say "> ", $elem, " <";
}

say '--- $foo.List';
for $foo.List -> $elem {
    say "> ", $elem, " <";
}

say '--- $foo<>';
say "Default is : ", $foo.VAR.WHICH;
say "Deconted is: ", $foo<>.VAR.WHICH;
for $foo<> -> $elem {
    say "> ", $elem, " <";
}

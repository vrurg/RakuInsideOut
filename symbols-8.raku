use v6;

# Single argument rule
my @a = [1, 2, 3];
my $foo = @a;

say '--- @a';
for @a -> $elem {
    say "> ", $elem, " <";
}

say '--- $foo';
for $foo -> $elem {
    say "> ", $elem, " <";
}

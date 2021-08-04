use v6;

my @a = 1..10;
@a[1] = ['a', 'b', 'c'];

for @a[1] -> $elem {
    say "> ", $elem, " <";
}

say @a[1].VAR.^name;

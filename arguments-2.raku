use v6;

sub foo($a) {
    say "--- foo";
    say $a.WHICH, " of ", $a.elems;
    say $a.VAR.WHICH;
    $a[10] = "from foo";
}

sub bar(@a) {
    say "--- bar";
    say @a.WHICH, " of ", @a.elems;
    say @a.VAR.WHICH;
    @a[11] = "from bar";
}

my @a = 0..^10000;

say "--- before subs:";
say @a[10,11].raku;

# In both calls we pass the array as a single object
foo(@a);
bar(@a);

say "--- after subs:";
say @a[10,11].raku;

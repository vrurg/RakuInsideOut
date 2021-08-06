use v6;
use nqp;

sub dump-ctx {
    my $ctx = CALLER::;
    my $frame = 0;
    say "  - lexical: ";
    $frame = 0;
    loop {
        say "    ", $frame++, ". ", $ctx.keys.sort.join(", ");
        last if $ctx<!UNIT_MARKER>:exists;
        $ctx = $ctx<OUTER>.WHO;
        last unless $ctx;
    }
    $ctx = CALLER::;
    $frame = 0;
    say "  - call stack:";
    loop {
        say "    ", $frame++, ". ", $ctx.keys.sort.join(", ");
        last if $ctx<STOP-HERE>;
        $ctx = $ctx<CALLER>.WHO;
        last unless $ctx;
    }
}

my $*b0;

my $disjointed = {
    my $*disjointed;
    say "Disjointed block";
    dump-ctx;
    #say $*b2; # for dynamic context
}

{
    say "Block 1";
    my $*b1;
    {
        say "Block 2";
        my $*b2 = "second block";
        dump-ctx;
        say "";
        $disjointed.();
    }
}


#$disjointed.(); # for dynamic context

# vim: foldmethod=indent

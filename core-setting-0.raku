use v6.c;

{
    say "--- v6.c symbols";
    my $ctx = OUTER::OUTER::;

    repeat {
        say $++, ". ", $ctx.keys.join(", ");
        $ctx = $ctx<OUTER>.WHO;
    } until !$ctx;
}

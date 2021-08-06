use v6.c;

{
    say "Lexical outers:";
    my $ctx = OUTER::OUTER::;

    say "0. -compunit-";
    repeat {
        say ++$, ". ", $ctx.keys;
        $ctx = $ctx<OUTER>.WHO;
    } until !$ctx;

    say "\nCall stack: ";
    $ctx = CALLER::CALLER::;

    say "0. -compunit-";
    repeat {
        say ++$, ". ", $ctx.keys;
        $ctx = $ctx<CALLER>.WHO;
    } until !$ctx;
}

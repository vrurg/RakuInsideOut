use v6.c;

{
    say "Lexical outers:";
    my $ctx = OUTER::OUTER::;

    repeat {
        say $++, ". ", $ctx.keys;
        $ctx = $ctx<OUTER>.WHO;
    } until !$ctx;

    say "\nCall stack: ";
    $ctx = CALLER::CALLER::;

    repeat {
        say $++, ". ", $ctx.keys;
        $ctx = $ctx<CALLER>.WHO;
    } until !$ctx;
}

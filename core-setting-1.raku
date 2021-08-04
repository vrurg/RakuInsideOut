#use v6.c;
#use v6.d;
use v6.e.PREVIEW;

{
    say "--- CORE revisions";
    my $ctx = OUTER::OUTER::;

    repeat {
        say $++, ". ", $ctx<CORE-SETTING-REV> // "";
        $ctx = $ctx<OUTER>.WHO;
    } while $ctx ~~ PseudoStash;
}

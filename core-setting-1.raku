use v6.c;
#use v6.d;
#use v6.e.PREVIEW;

# CORE-SETTING-REV
{
    say "--- CORE revisions";
    my $ctx = OUTER::OUTER::;

    say "0. -compunit frame-";
    repeat {
        say ++$, ". ", |("CORE-SETTING-REV = $_" with $ctx<CORE-SETTING-REV>);
        $ctx = $ctx<OUTER>.WHO;
    } while $ctx ~~ PseudoStash;
}

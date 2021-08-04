use v6;

sub MONKEY-SEE-NO-EVAL {
    note "monkey, monkey!";
    True;
}

my $s = "say 'ok'";
EVAL $s;

#use v6.d;
use v6.e.PREVIEW;

my $*fubar;
sub foo {
    my $bar = "The Ultimate Question";
    my sub answer { 42 };

    if True {
        my $*dyn; # If this symbol removed if's block is likely to be inlined
        my $in-if;
        baz;
    }
}

sub baz {
    say "Caller's MY     : ", CALLER::MY::.keys;
    say "Caller's LEXICAL: ", CALLER::LEXICAL::.keys;
    #say "Caller's OUTERS : ", CALLER::OUTERS::.keys;
}

foo;

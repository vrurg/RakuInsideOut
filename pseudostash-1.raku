use v6;

sub foo {
    my $bar = "The Ultimate Question";
    my sub answer { 42 };

    say "MY   : ", MY.HOW.^name;
    say "MY:: : ", MY::.^name;
}

foo;

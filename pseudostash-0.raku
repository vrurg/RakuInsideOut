use v6.e.PREVIEW;

sub foo {
    my $bar = "The Ultimate Question";
    my sub answer { 42 };

    if True {
        my $baz = "111";
        say "MY: ", MY::.keys;
    }
}

foo;

use v6;

sub foo {
    say "foo....";
}

say 'sub foo: ', &foo;
say 'sub VAR: ', &foo.VAR.WHICH;

foo;

my $bar = 12;
MY::<&foo> := $bar;

say 'new "sub" foo: ', &foo;
say 'new "sub" VAR: ', &foo.VAR.WHICH;

foo;

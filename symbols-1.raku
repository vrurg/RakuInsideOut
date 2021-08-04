use v6;

sub foo {
    say "foo....";
}

say "MY::.keys       : ", MY::.keys.sort;

say "&foo.WHICH      : ", &foo.WHICH;
say "MY::<&foo>.WHICH: ", MY::<&foo>.WHICH;

foo;
&foo();
MY::<&foo>();
my $name = '&foo';
MY::{$name}();

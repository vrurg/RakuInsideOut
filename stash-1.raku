use v6;

module Foo {
    our $bar = 42;
    our sub bar {
        say "this is bar()";
    }
}

say "Foo.HOW      : ", Foo.HOW.^name;
say "Foo::.WHICH  : ", (Foo::).WHICH;
say "Foo.WHO.WHICH: ", Foo.WHO.WHICH;
say "Stash Parents: ", Foo::.^parents;

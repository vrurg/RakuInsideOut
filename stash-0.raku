use v6;

module Foo {
    our $bar = 42;
    our sub bar {
        say "this is bar()";
    }
}

Foo::bar();
say $Foo::bar;

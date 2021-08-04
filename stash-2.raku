use v6;

module Foo {
    our $bar = 42;
    our sub bar {
        say "this is bar()";
    }
}

say 'Foo: ', Foo::.keys; # Raku is consistent!

# --- just to compate ---
my %h = a => 1, b => 2;
say '%h : ', %h.keys;

Foo::<$foo> = 1;
say $Foo::foo;

use v6;

class Foo {
    method bless(*%p) {
        say "Foo.bless";
        nextsame
    }
}

Foo.new;

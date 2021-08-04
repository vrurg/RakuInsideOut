use v6;

class Foo {
    submethod foo {
        say "we're here";
    }
}

class Bar is Foo {}

Foo.new.foo;
Bar.new.foo;

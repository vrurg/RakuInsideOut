use v6;

class Foo {
    method TWEAK {
        say "  . tweaking Foo";
    }
}

class Bar is Foo {}

say "--- before new";
Bar.new;
say "--- after new";


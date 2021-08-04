use v6;

class Foo { };
say Foo;

Foo.HOW.set_name(Foo, "Fubar");
say Foo;

Foo.^set_name("Foo, again! Oops..."); # This is equivalent to the above call
say Foo;

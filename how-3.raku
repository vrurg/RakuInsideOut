use v6;

class Foo { };

role MyHOW {
    method shortname($) {
        "<<" ~ callsame() ~ ">>"
    }
}

say Foo;

Foo.HOW does MyHOW;

say Foo;

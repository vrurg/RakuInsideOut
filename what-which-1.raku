use v6;
# instrospection methods are available on any Raku class
say "Foo".WHICH;

class Foo { };
Foo.new.WHICH.say;

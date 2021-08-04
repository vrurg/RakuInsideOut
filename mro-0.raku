use v6;

class Foo { }
class Bar is Foo { }

say Bar.^mro;

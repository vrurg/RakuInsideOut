use v6;

my \Foo = class {
    method bar { "method bar" }
}

say "bar method: ", Foo.bar;
say "class name: ", Foo.^name;

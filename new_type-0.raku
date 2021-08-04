use v6;

# Lookup for class' metamodel implementation class
my $how = EXPORTHOW::<class>;

say "--- Create a new class with ", $how.^name;

role R {
    method bar { "method bar from role R" }
}

my \foo_class = $how.new_type( name => 'Foo' );

my &foo-method = my method foo { "method foo" };
say "+ will install ", &foo-method.raku;

foo_class.^add_role(R);
foo_class.^add_method: 'foo', &foo-method;
foo_class.^compose;

say foo_class;
say "& using method foo: ", foo_class.new.foo;
say "& using method bar: ", foo_class.new.bar;

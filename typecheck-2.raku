use v6;
use nqp;

my $obj;

# Ignore this line, please! We haven't discussed this yet.
class MyClassHOW is Metamodel::ClassHOW { method has_default_parent_type is raw { 0 } }; my \my-class = MyClassHOW.new_type(:name<Boo>); my-class.^compose;
$obj = nqp::create(my-class);

say "My class parents: ", my-class.^parents: :all;
say "My class name: ", my-class.^name;
say "\$obj is of type ", $obj.VAR.of;
say "instance name: ", $obj.^name;
say "Is my-class a Mu? ", ? my-class.^isa: Mu;

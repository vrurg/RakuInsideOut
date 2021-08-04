use v6;

sub foo(@a) {
}
say &foo.signature.params[0].type;


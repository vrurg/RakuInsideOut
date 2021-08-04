use v6;

class C {
    has $.attr = π;

    submethod BUILD(*%init) {
        say "BUILD with ", %init;
    }
}

my $obj = C.new;
say $obj.attr;

$obj = C.new(attr => e);
say $obj.attr;

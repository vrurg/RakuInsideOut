use v6;

class C {
    has $.attr = π;

    submethod BUILD(:$!attr) {
        #$!attr *= 2;
    }
}

my $obj = C.new(attr => e);
say $obj.attr;

$obj = C.new;
say $obj.attr;

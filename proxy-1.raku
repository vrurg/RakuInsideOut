use v6;

my $counter = 0;
my $proxy := Proxy.new(
    FETCH => -> $ {
        say ". FETCH on ", $counter;
        ++$counter;
    },
    STORE => -> $, $val {
        say ". STORE $val";
        $counter = $val;
    }
);

#multi sub foo(Str:D $s) { }
#multi sub foo(Int:D \v where * > 100) { }
multi sub foo(\v) {
    $*OUT.put: v.gist;
}

say $proxy;
say $proxy;
foo $proxy;

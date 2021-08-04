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

sub say1($v) {
    $*OUT.put: $v;
}

#proto sub say2(Any:D) {*}
#multi sub say2(Str:D \v) {
#    $*OUT.put: v;
#}
multi sub say2(Any:D \v) {
    $*OUT.put: v.gist;
}

say1 $proxy;
say2 $proxy;


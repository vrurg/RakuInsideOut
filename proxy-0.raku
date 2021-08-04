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

say my $foo = $proxy;
say $foo = $proxy;
$proxy = 10;
say $foo = $proxy;
say $proxy.VAR.^name;

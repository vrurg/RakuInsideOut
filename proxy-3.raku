use v6;

sub bang  { say "*** BANG! ***" }
sub misfire { say "... click" }
my &roulette := Proxy.new(
    FETCH => -> $ {
        rand < 0.2
            ?? &bang
            !! &misfire
    },
    STORE => -> $, $ {
        die "can't store";
    }
);

roulette for ^20;

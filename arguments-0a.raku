use v6;
use nqp;

sub foo($a) {
    print "<{$a.WHICH} // " ~ nqp::objectid(nqp::p6var($a)) ~ ">";
    sleep .1.rand;
    say "[{$*THREAD.id}] arg: ", nqp::objectid($a.VAR), " = ", $a, " // ", nqp::objectid($a);
}

my @p;
my @w;
my $starter = Promise.new;

for ^20 -> $n {
    @p[$n] = Promise.new;
    @w[$n] = start {
        @p[$n].keep;
        await $starter;

        foo($n);
    }
}

await @p;
$starter.keep;
await @w;

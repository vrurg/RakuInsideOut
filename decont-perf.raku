use v6;

constant REP-COUNT = 10000;

my $starter = Promise.new;
my @p;
my @w;

my @t =
"decont" => -> $l is raw {
    my $sum = 0;
    for $l<> {
        $sum += $_;
    }
},
"list" => -> $l is raw {
    my $sum = 0;
    for $l.list {
        $sum += $_;
    }
},
"straight" => -> $l is raw {
    my $sum = 0;
    for @$l {
        $sum += $_;
    }
};

my %result;

for ^@t.elems -> $n {
    @p[$n] = Promise.new;
    my ($key, &t) = @t[$n].kv;
    @w.push: start {
        my $l = [^10];
        @p[$n].keep;
        await $starter;
        for ^500000 {
            &t($l)
        }
        %result{$key} = now - ENTER now;
    }
}

await @p;
$starter.keep;
await @w;

for @t.map(*.key) -> $key {
    say $key.fmt('%8s'), ": ", %result{$key};
}

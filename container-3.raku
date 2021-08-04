use v6;

my $bar = 42;

say "Value 1: ", $bar;
say ".VAR 1 : ", $bar.VAR.^name;

$bar := 13;
say "Value 2: ", $bar;
say ".VAR 2 : ", $bar.VAR.^name;

$bar := 12;
say "Value 3: ", $bar;

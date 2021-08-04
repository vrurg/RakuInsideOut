use v6;

my $foo = 42;
my $bar := 13;
my @a;
my %h;

say 'foo: ', $foo.VAR.^name, " ", $foo.^name;
say 'bar: ', $bar.VAR.^name, "    ", $bar.^name;
say '@a : ', @a.VAR.^name, "  ", @a.^name;
say '%h : ', %h.VAR.^name, "   ", %h.^name;

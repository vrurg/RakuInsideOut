use v6;

class Point {
    has $.x;
    has $.y;
    proto method new(|) {*}
    multi method new($x, $y, *%c) {
        callwith(:$x, :$y, |%c);
    }
    multi method new(|c) {
        # nextsame is currently broken
        self.Any::new: |c
    }
}

my $p = Point.new(12, 13);
say $p.x, ", ", $p.y;

$p = Point.new(x => 12, y => 13);
say $p.x, ", ", $p.y;

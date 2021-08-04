use v6;

class Point {
    has $.x;
    has $.y;

    method CALL-ME($x, $y) {
        self.new: :$x, :$y
    }
}

my $p = Point(12, 13);
say $p.x, ", ", $p.y;

use v6;

sub DYNAMIC($var) is raw {
    note "? looking up for ", $var;
    CORE::<&DYNAMIC>.($var);
}

say $*A;

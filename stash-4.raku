use v6;
use lib '.';
use Stash4;

module Foo {
    our $bar = 42;
    our sub bar {
        say "this is bar()";
    }
}

our %h = a => 1, b => 2;
dump-global;


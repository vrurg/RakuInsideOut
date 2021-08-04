use v6;
our $module's-outer;
module Stash4 {
    sub dump-global is export {
        say "GLOBAL    FROM MODULE: ", GLOBAL::.keys;
        say "GLOBALish FROM MODULE: ", GLOBALish::.keys;
    }
}

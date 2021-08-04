use v6;
use nqp;

my &new-meth := nqp::tryfindmethod(Any, 'new');
nqp::say(&new-meth.raku);

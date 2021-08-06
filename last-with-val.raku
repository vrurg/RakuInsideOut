#use v6.d;
use v6.e.PREVIEW;

say (^50).grep: { 
    last False if $_ >= 20; 
    .is-prime 
};

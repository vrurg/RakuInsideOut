use v6.c;
#use v6.e.PREVIEW;

role R {
    submethod TWEAK {
        note "role";
    }
}

class C does R {
    #submethod TWEAK {
    #    #self.R::TWEAK;
    #    note "class";
    #}
}

C.new;

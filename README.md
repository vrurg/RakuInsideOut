# Learning Raku From Inside Out

## Building Rakudo

    mkdir -p $HOME/src/Raku
    cd $HOME/src/Raku
    git clone https://github.com/rakudo/rakudo.git
    cd rakudo
    ./Configure.pl --gen-moar --gen-nqp --backends=moar —make-install

## Use `rakubrew` for managing rakudo versions

https://rakubrew.org

To register the previously built Rakudo:

    $ rakubrew register build $HOME/src/Raku/rakudo/install

To get a Rakudo release:

    $ rakubrew build moar 2021.07

and when it's done:

    $ rakubrew switch moar-2021.07

To switch to our custom build Rakudo:

    $ rakubrew switch build


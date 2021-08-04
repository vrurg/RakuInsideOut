use v6;

say Str.^methods.map(*.name).sort;

say "Can `uc` method? ", Str.^can('uc');
say "Can `foo` method? ", Str.^can('foo');

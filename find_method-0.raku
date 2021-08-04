use v6;

say "find_method uc                  : ", Str.^find_method("uc").WHICH;
say "find_method for non-existing one: ", Str.^find_method("NO-METHOD_WITH_THIS_NAME").WHICH;

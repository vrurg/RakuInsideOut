use v6;
# Labels are objects too!

FOO: loop { last FOO }
say FOO.WHICH;
say "Gist of FOO: ", FOO.gist;

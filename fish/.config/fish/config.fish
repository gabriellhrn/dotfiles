
set -x EDITOR vim
set -x GREP_OPTIONS --color=auto
set -x GREP_COLOR "4;33"
set -x CLICOLOR auto

eval (python -m virtualfish compat_aliases)
eval (/usr/bin/perl -I/home/gabriellhrn/perl5/lib/perl5 -Mlocal::lib)


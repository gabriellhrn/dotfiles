#
# Completions for duckpan
#

complete -c duckpan -f -a check       -d "Check if you fulfill all requirements for the development environment"
complete -c duckpan -f -a env         -d "Add, remove or retrieve values from DuckPAN's Env.ini"
complete -c duckpan -f -a help        -d "View more detailed help information"
complete -c duckpan -f -a installdeps -d "Install all Perl dependencies"
complete -c duckpan -f -a new         -d "Generate new Instant Answer skeleton"
complete -c duckpan -f -a poupload    -d "Upload .po translations file to Duck.co"
complete -c duckpan -f -a publisher   -d "Start local web server for DuckDuckGo-Publisher static websites"
complete -c duckpan -f -a query       -d "Test Instant Answer triggers on command line"
complete -c duckpan -f -a reinstall   -d "Reinstalls installed, pinned, or most recent DuckPAN and DDG Perl modules"
complete -c duckpan -f -a latest      -d "Like reinstall but ignores installed versions"
complete -c duckpan -f -a release     -d "Pushes a new release of the current project to duckpan.org"
complete -c duckpan -f -a roadrunner  -d "Same as installdeps, but skips tests (dangerous!)"
complete -c duckpan -f -a server      -d "Start local web server to test Instant Answer display"
complete -c duckpan -f -a setup       -d "Configure Duck.co and PAUSE account 'poupload' and 'release'"
complete -c duckpan -f -a update      -d "Installs newest DuckPAN packages"
complete -c duckpan -f -a upgrade     -d "Installs newest DuckPAN and DDG packages"


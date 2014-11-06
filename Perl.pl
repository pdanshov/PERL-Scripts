perl -e "print join(qq/\n/, @INC);"

perl -V

I suspect it has something to do with the fact that all of your @INC pathways are pointing to your Perl 5.8 installation.
You can add the Perl 5.10 installation to the @INC array by adding either:
unshift(@INC, '/path/to/your/5.10/install');
or
use lib "/path/to/your/5.10/install";
to the beginning of your script, before the 'use' line for the troublesome module.


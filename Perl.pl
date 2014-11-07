perl -e "print join(qq/\n/, @INC);"

perl -V

I suspect it has something to do with the fact that all of your @INC pathways are pointing to your Perl 5.8 installation.
You can add the Perl 5.10 installation to the @INC array by adding either:
	unshift(@INC, '/path/to/your/5.10/install');
or
	use lib "/path/to/your/5.10/install";
to the beginning of your script, before the 'use' line for the troublesome module.

What is the output of perl -v?
It looks like your Win32::ODBC was compiled for perl 5.8.2 whereas you
have perl 5.8.5. You need probably need to reinstall Win32::ODBC.

Win32 Error Codes:
http://msdn.microsoft.com/en-us/library/windows/desktop/ms681382%28v=vs.85%29.aspx


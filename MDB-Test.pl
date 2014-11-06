#!/usr/bin/perl
use strict;use warnings;

use DBI;
##use Win32::OLE;
#use Win32OLE;

#my $DBFile  = qw( X:\Path\To\Your\Database.mdb ); # 
##my $DBFile  = qw( C:\Program Files\Trading Partner\System\Recon.mdb );
#Choose appropriate version of Jet for your system
#my $Jet = Win32::OLE->CreateObject('DAO.DBEngine.36')   or die "Can't create Jet database engine.";
##my $Jet = Win32OLE->CreateObject('DAO.DBEngine.36')   or die "Can't create Jet database engine.";
##my  $DB = $Jet->OpenDatabase( $DBFile );

my $SQLquery = "DELETE * FROM Test_Table";
$DB->Execute($SQLquery, 128); #128=DBFailOnError

#You don't even need to set up a DSN to talk to Access databases, you can simply pass the file name of the .mdb file:
#$dbh = DBI->connect(q{dbi:ODBC:driver=Microsoft Access Driver (*.mdb); +dbq=\\fooserver\path\source.mdb}, '', '');
#C:\Program Files\Trading Partner\System\Recon.mdb
$dbh = DBI->connect(q{dbi:ODBC:driver=Microsoft Access Driver (*.mdb); +dbq=C:\Program Files\Trading Partner\System\Recon.mdb}, '', '');

#my $dbh = DBI->connect('dbi:ODBC:driver=Microsoft Access Driver (*.mdb, *.accdb);dbq=[path to mdb file]') or die "\nCan't connect to Access database: " . $DBI::errstr;

#This is a very basic very alpha quality Win32::ODBC emulation for the DBI. To use it just replace
#use Win32::ODBC;
#in your scripts with
#use Win32::DBIODBC;
#or, while experimenting, you can pre-load this module without changing your scripts by doing
#perl -MWin32::DBIODBC your_script_name



#!/usr/bin/perl
use strict;
use warnings;
use FindBin;
use lib $FindBin::Bin;
use AuthSecure;

# ======================================================
# 🔹 Initialize API
# ======================================================
AuthSecure::Api(
  "XD",                     # Application Name
  "3ezshCmkXrn",            # Application OwnerID
  "7a8bfeb28afcd690812ee5de010a6860",  # Application Secret
  "1.0"                     # Application Version
);

print "\nConnecting...\n";
AuthSecure::Init();

# ======================================================
# 🔹 Menu
# ======================================================
print "\n1) Login\n2) Register\n3) License Login\n4) Exit\nChoose: ";
chomp(my $opt = <STDIN>);

if ($opt == 1) {
  print "Username: "; chomp(my $u = <STDIN>);
  print "Password: "; chomp(my $p = <STDIN>);
  AuthSecure::Login($u, $p);
}
elsif ($opt == 2) {
  print "Username: "; chomp(my $u = <STDIN>);
  print "Password: "; chomp(my $p = <STDIN>);
  print "License: ";  chomp(my $l = <STDIN>);
  AuthSecure::Register($u, $p, $l);
}
elsif ($opt == 3) {
  print "License: "; chomp(my $l = <STDIN>);
  AuthSecure::License($l);
}
else {
  print "Goodbye!\n";
  exit;
}

#!/usr/bin/perl

use lib '/var/www/html/vscode-demo/perl';
use ProductObject;

use strict;
use warnings;

my $iphone = ProductObject->new({ serial =>"100", name => "iPhone", price => 650.00});
my $nexus = ProductObject->new({ serial =>"101", name => "Nexus", price => 299.00});
 
print "-----";
print "\n";
print $iphone->to_string();
print $nexus->to_string();
#print $nexus->get_price();
print "\n";
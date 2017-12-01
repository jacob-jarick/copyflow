#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper::Concise;use GraphViz::Data::Grapher;

use FindBin qw/$Bin/;
use lib "$Bin/libs";
use jhash;

my $file = "$Bin/test.json";
my $data = &jhash::load($file);
my %hash = %$data;
my $graph = GraphViz::Data::Grapher->new(%hash);
my $tmp = $graph->as_png;
exit;
open( FILE, ">out.png" ) or die "$!\n";
print FILE 1;
close(FILE);


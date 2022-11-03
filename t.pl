#!/usr/bin/perl

use Data::Dumper ;

@eaddr = `ip -o -f inet a` ;
#@eaddr = `ip -o a` ;

foreach $i (@eaddr) { 
	@eaddr2_1 = split(/\s+/,$i) ; 
	@eaddr2_2 = split(/\//, $eaddr2_1[3]) ; 
	push(@eaddr2, [ $eaddr2_1[1], $eaddr2_2[0] ]) ; 
}

print Dumper \@eaddr2 ;

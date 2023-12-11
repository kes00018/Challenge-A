#! /usr/bin/perl 

use strict;
use warnings;

# Define genetic code mappings for single character amino acids 
my %code = (
        "TTT" => "F", 
        "TTC" => "F",              
        "ATG" => "M",          
        "CCT" => "P", 
        "CCA" => "P", 
        "CCC" => "P",
        "CCG" => "P",
        "CTT" => "L",
        "CTC" => "L",
        "CTA" => "L",
        "CTG" => "L",
        "TTG" => "L",
        "TTA" => "L",
        "ATC" => "I",
        "ATA" => "I",
        "ATT" => "I",
        "ATG" => "I", 
        "GTC" => "V",
        "GTA" => "V",
        "GTG" => "V",
        "GTT" => "V",  
        "TCC" => "S",
        "TCG" => "S",
        "TCT" => "S",
        "TCA" => "S",
        "TCG" => "S",
        "AGT" => "S",
        "AGC" => "S",
        "TAT" => "Y",
        "TAC" => "Y",
        "TAA" => "STOP",
        "TAG" => "STOP",
        "TGT" => "C",
        "TGC" => "C",
        "TGA" => "STOP",
        "TGG" => "W",
        "CAT" => "H",
        "CAC" => "H",
        "CAA" => "Q",
        "CAG" => "Q",
        "CGT" => "R",
        "CGC" => "R",
        "CGA" => "R",
        "CGG" => "R",
        "AGA" => "R",
        "AGG" => "R",
        "ACT" => "T",
        "ACC" => "T",
        "ACA" => "T",
        "ACG" => "T",
        "AAT" => "N",
        "AAC" => "N",
        "AAA" => "K",
        "AAG" => "K",
        "GCT" => "A",
        "GCC" => "A",
        "GCA" => "A",
        "GCG" => "A",
        "GAT" => "D",
        "GAC" => "D",
        "GAA" => "E",
        "GAG" => "E",
        "GGT" => "G",
        "GGC" => "G",
        "GGA" => "G",
        "GGG" => "G",
)
# Read input file name from command line 
	my $my_file ="$ARGV[0]";

# Open input file
	open(my $fh, "<",$my_file);

#print $my_file;
#print"\n";

# Read input file line by line
	while (my $line = <$fh>){
    	chomp $line; # remove newline character
    
    if ($line =~ /^>/) {
    
      #Test for header
      print $header 
      
    } else {
    my $protein = "aa";
	
	# This creates an array where every element is a single character of the sequence.
			my $bases = split(//,$line);
			
# Loop over the array characters.
			for ($i=0;$i<scalar(@bases);$i+=3) {
			
			my $codon = $bases[$i].$bases[$i+1].$bases[$i+2]
			my $translation = $aa{codon};
				$protein = $protein.$tranlation;
				
				}	
				
				print "$protein\n";
				}
       

}

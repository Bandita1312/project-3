#!/usr/bin/perl
#Bandita Rajkhowa
#20 november 2021
#sequence shuffling

$seq = "ATGCGAATTCGTGCGTACGTGCGT";

#STRATEGY_1
#spliting the string into smaller part
@sequence = split("",$seq);
print "the sequence is:@sequence\n";

for ($i=0;$i<=scalar(@sequence);$i++)
{
	my @nuc = @sequence;
	$position_A = int(rand(@nuc));
	$position_B = int(rand(@nuc));
	@nuc[$position_A,$position_B] = @nuc[$position_B,$position_A];
	$gene = join("",@nuc);
	print "shuffling between index ".$position_A ." and ".$position_B , "\n";
	print $gene,"\n";
}

#STRATEGY_2
$DNA_seq = "AATTGGCCGTCGTACGTCGTCGTACGTGCGT";
#spliting the sequence
@DNA = split('',$DNA_seq);
print "DNA sequence after splitting:";
print @DNA,"\n";

#using while loop
while ($i<= @DNA)
{
	my @nucleotide;
	@nucleotide = @DNA;
	#using rand function
	$position_a = int(rand(@nucleotide));
	#using splice function to remove the nucleotide of random position
	@nucleotide_2 =splice(@nucleotide,$position_a,1);
	print "the random position is: $position_a\n";
	#adding the nucleotide of random position at the end of the array
	push(@nucleotide,@nucleotide_2);
	print "the new shuffeled array is: @nucleotide\n";
	print "\n";
	
	$i = $i + 1;
	
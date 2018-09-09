

foreach $file (glob("*.genes.results")) {
	if ($file =~ /([^\/]+)\.genes\.results/) {
		$sample = $1;
		$hash_sample{$sample} = 1;

	}

	open(IN,"<$file");
	<IN>;
	while(<IN>) {
		chomp;
		@a = split("\t");
		$hash{$a[0]}{$sample}{"FPKM"} = $a[6];
		$hash{$a[0]}{$sample}{"count"} = $a[4];
	}
}

$out1 = "summary_table_gene_FPKM.txt";
$out2 = "summary_table_gene_count.txt";
open(OUT1, ">$out1");
open(OUT2, ">$out2");

print OUT1 "gene";
foreach $sample (sort keys %hash_sample) {
	print OUT1 "\t".$sample;
}
print OUT1 "\n";

print OUT2 "gene";
foreach $sample (sort keys %hash_sample) {
        print OUT2 "\t".$sample;
}
print OUT2 "\n";


foreach $gene (sort keys %hash) {
	print OUT1 $gene;
	print OUT2 $gene;
	foreach $sample (sort keys %hash_sample) {
		print OUT1 "\t".$hash{$gene}{$sample}{"FPKM"};
		print OUT2 "\t".int($hash{$gene}{$sample}{"count"}+0.5);
	}
	print OUT1  "\n";
	print OUT2  "\n";
}



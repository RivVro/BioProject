rule dataOphalen:
	input:
		'inputFile.txt'
	output: 
		'outputVariants.txt'
	run:
		with open(input[0],"r") as f:
			line = f.readline()
			waarden = line.split(",")
			chrom = waarden[0].replace("'", "")
			pos = waarden[1].replace("'", "")
			aft = waarden[2].replace("'", "")
			shell("wget 'http://0.0.0.0:5000/?chrom={chrom}&pos={pos}&aft={aft}' --output-document {output}")

rule bullshit:
	input:
		'inputFile.txt'
	output: 
		'outputVariants.txt'
	run:
		with open(input[0],"r") as f:
			line = f.readline()
			waarden = line.split(",")
			chrom = waarden[0]
			pos = waarden[1]
			aft = waarden[2]
			shell("wget 'http://0.0.0.0:5000/?chrom=Y&pos=3453&aft=G' --output-document {output}")

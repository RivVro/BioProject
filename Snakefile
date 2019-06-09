rule dataOphalen:
	input:
		'inputFile.txt'
	output: 
		'outputVariants.txt'
	run:
		with open(input[0],"r") as f:
			line = f.readline()
			waarden = line.split(",")
			print(waarden)
			print(waarden[0])
			chrom = waarden[0]
			pos = waarden[1]
			aft = waarden[2].replace("\n", "")
			shell("wget 'http://0.0.0.0:5000/?chrom={chrom}&pos={pos}&aft={aft}' --output-document {output}")

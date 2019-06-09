rule bullshit:
	input:
		'inputFile.txt'
	output: 
		'outputVariants.txt'
	run:
		with open(input[0],"r") as f:
			for line in f:
				waarden = line.split(",")
				chrom = waarden[0]
				pos = waarden[1]
				aft = waarden[2]
			print(chrom,pos,aft)
		shell("wget 'http://0.0.0.0:5000/?chrom={chrom}&pos={pos}&aft={aft}' --output-document{output}")

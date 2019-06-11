#regel voor het ophalen van de data
rule dataOphalen:
#inputFile is een bestand dat door de user wordt gegeven
	input:
		'inputFile.txt'
#het resultaat van de rule komt in een txt bestand
	output:
		'outputVariants.txt'
#de api wordt in de shell opgevraagd met de meegegeven user input
	run:
		with open(input[0],"r") as f:
			line = f.readline()
			waarden = line.split(",")
			chrom = waarden[0]
			pos = waarden[1]
			aft = waarden[2].replace("\n", "")
			shell("wget 'http://0.0.0.0:5000/?chrom={chrom}&pos={pos}&aft={aft}' --output-document {output}")

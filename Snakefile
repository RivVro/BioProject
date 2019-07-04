rule input_selectdata:		
	input:
		'dataGnomad.py','gnomad.exomes.r2.1.1.sites.Y.vcf' 
	output:
		'LijstSNP.txt' 
	shell:
		'python {input[0]} {input[1]}> {output}'

rule input_databasedata:	
	input:
		txtLijstSNP = "LijstSNP.txt",	
		pythonvullendb = "vulDatabase.py"
	output:
		"outputRule2.txt"
	shell:
		"python3 {input.pythonvullendb}{input.txtLijstSNP}> {output}"
		
		
rule input_outputdata:		
	input:
<<<<<<< HEAD
		"InputUser.txt"
=======
		dbGoedkeuring = "outputRule2.txt",
		txtInputUser = "InputUser.txt",	
		pythonraadpleegdb = "app.py"
>>>>>>> 47b038a37d16fbed3b2405cd6a4eee7abf367b97
	output:
		"outputdb.txt"
	run:
		with open (input[0],"r") as f:
			line = f.readline()
			waarden = line.split(",")
			chrom = waarden[0]
			pos = waarden[1]
			aft = waarden[2].replace("\n","")
			shell("wget 'http://0.0.0.0:5000/?chrom={chrom}&pos={pos}&aft={aft}' --output-document{output}")


rule input_selectdata:		
	input:
		gnomad="gnomad.exomes.r2.1.1.sites.Y.vcf",
		pythondata="dataGnomad.py" 
	output:
		"LijstSNP.txt" 
	shell:
		"python3 {input.gnomad}{input.pythondata}> {output}"

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
		dbGoedkeuring = "outputRule2.txt",
		txtInputUser = "InputUser.txt",	
		pythonraadpleegdb = "app.py"
	output:
		"outputdb.txt"
	shell:
		"python3 {input.pythonraadpleegdb}{input.txtInputUser} > {output}"


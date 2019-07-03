snakemake --force --snakefile Snakefile input_selectdata # > /dev/null 2>&1
echo "-- input_selectdata was executed --"
snakemake --force --snakefile Snakefile input_databasedata # > /dev/null 2>&1
echo "-- input_databasedata was executed --"

snakemake --force --snakefile Snakefile input_outputdata # > /dev/null 2>&1	
echo "-- input_outputdata was executed --"

snakemake --force --snakefile Snakefile input_outputdata # > /dev/null 2>&1
echo "-- input_outputdata was executed --"
snakemake --force --snakefile Snakefile input_validatedata # > /dev/null 2>&1
echo "-- input_validatedata was executed --"

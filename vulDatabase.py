def vulDatabase():
    config = {
        'user': 'root',
        'password': 'root',
        'host': 'db',
        'port': '3306',
        'database': 'gnomad'
    }

    connection = mysql.connector.connect(**config)
    cursor = connection.cursor()
    query = 'SELECT * FROM variants'
    #query = 'BULK INSTERT variants FROM databaseData WITH (FIELDTERMINATOR =',')'
    cursor.execute(query)
    cursor.close()
    connection.close()
    for row in cursor:
        print (row)
    #return ("database gevuld!")
    
    # Zorgt ervoor dat er een verbinding tussen rule 2 en 3 is door txt bestand aan te maken in rule 2 en deze in rule 3 weer aan te roepen.
    open("output.txt", "w").close()
    TXToutput = open("output.txt", "a+")
    TXToutput.write("Rule 2 succesvol afgerond en de database is hierbij gevuld."\n"Het programma gaat nu door naar rule 3...")
    TXToutput.close

def main():
    vulDatabase()

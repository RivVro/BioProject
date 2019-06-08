def vulDatabase(databaseData):
    config = {
        'user': 'root',
        'password': 'root',
        'host': 'db',
        'port': '3306',
        'database': 'gnomad'
    }

    connection = mysql.connector.connect(**config)
    cursor = connection.cursor()
    query = 'BULK INSTERT variants FROM databaseData WITH (FIELDTERMINATOR =',')'
    cursor.execute(query)
    cursor.close()
    connection.close()

def main():
    vulDatabase(snakemake.input[0])

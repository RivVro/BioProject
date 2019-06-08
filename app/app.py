from typing import List, Dict
from flask import Flask, request
import mysql.connector
import json

app = Flask(__name__)


def variants(zoekVariant) -> List[Dict]:
    
    f = open(zoekVariant, 'r')
    for line in f:
        waarden = line.split(",")
        chrom = waarden[0]
        pos = waarden[1]
    
    print("chrom")
    print("pos")

    config = {
        'user': 'root',
        'password': 'root',
        'host': 'db',
        'port': '3306',
        'database': 'gnomad'
    }

    connection = mysql.connector.connect(**config)
    cursor = connection.cursor()
    query = 'SELECT * FROM variants WHERE chrom=%s AND pos=%s;'
    cursor.execute(query, (chrom,pos))
    results = cursor.fetchall()
    cursor.close()
    connection.close()

    return results


@app.route('/', methods = ['GET'])
def index() -> str:
    results = variants("~/app/inputFile.txt")
    return str(results)
    #return("hello")

if __name__ == '__main__':
    app.run(host='0.0.0.0')

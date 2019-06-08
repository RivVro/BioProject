rule container:
    shell: "docker-compose up"

rule vulDatabase:
    input: "databaseData.txt"
    script: "vulDatabase.py"

rule vindVariant:
    input: "inputFile.txt"
    script: "app.py"

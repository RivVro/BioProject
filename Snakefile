rule all:
    input:
        'inputFile.txt'
    run:
        with open(input[0], "r") as f:
            for line in f:
                print(line)

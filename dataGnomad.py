from flask import Flask
import vcf
import json

#app = Flask(__name__)


#@app.route('/')
def lees_bestand():
    vcf_reader = vcf.Reader(open('gnomad.exomes.r2.1.1.sites.Y.vcf', 'r'))
    open("LijstSNP.txt", "w").close()
    lijst = []
    for record in vcf_reader:
        try:
            #print(record)
            TXTinput = open("LijstSNP.txt", "a+")
            db_Data = '(\''+str(record.CHROM) +'\',\''+ str(record.POS) +'\',\''+ str(record.REF) +'\',\''+ str(record.ALT).replace("[", "").replace("]","") + '\',\''+ str(record.INFO['AF'][0]) + '\'),\n'
            TXTinput.write(db_Data)
            TXTinput.close
        except KeyError:
            continue

def main():
    lees_bestand()


main()
#if __name__ == '__main__':
#    app.run()

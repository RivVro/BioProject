# -*- coding: utf-8 -*-
"""
Created on Mon Jul  1 20:56:40 2019

@author: Nicky
"""
import myvariant
mv = myvariant.MyVariantInfo()
info = mv.querymany(['rs121913364'], scopes='dbsnp.rsid')
a = ([d['_id'] for d in info])
genomeposition = (a[0])
print(genomeposition)
clinvar_result = mv.getvariant(genomeposition)
text = str(clinvar_result)
print(clinvar_result)
file = open("test.txt","w") #opens file with name of "test.txt"
# if statement variabele null
if text == None:
  file.write("No results found on Clinvar")
else:
  file.write(text)
file.close()
with open('test.txt', 'r') as f2:
    data = f2.read()
    print(data)

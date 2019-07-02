# -*- coding: utf-8 -*-
"""
Created on Mon Jul  1 20:56:40 2019

@author: Nicky
"""
import myvariant
mv = myvariant.MyVariantInfo()
clinvar_result = mv.getvariant("chr7:g.140453134T>C")
text = str(clinvar_result)
file = open("test.txt","w") #opens file with name of "test.txt"
# if statement variabele not null
if text != None:
  file.write("No results found on Clinvar")
else:
  file.write(text)
file.close()
with open('test.txt', 'r') as f2:
    data = f2.read()
    print(data)

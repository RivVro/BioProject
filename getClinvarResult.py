# -*- coding: utf-8 -*-
"""
Created on Mon Jul  1 20:56:40 2019

@author: Nicky
"""
import myvariant
mv = myvariant.MyVariantInfo()
clinvar_result = mv.getvariant("chr7:g.140453134T>C")
str1 = str(clinvar_result)
f = open("test.txt","w") #opens file with name of "test.txt"
f.write(str1)
f.close()
print("gelukt")

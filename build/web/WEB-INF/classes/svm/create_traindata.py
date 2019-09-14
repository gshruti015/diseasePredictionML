import sys
import MySQLdb
import urllib2
import sys
db = MySQLdb.connect(host="127.0.0.1", port=3306,user="root",passwd="",db="work" )
cursor = db.cursor()
all_symp=[]
symp_flag=[]
files=['autoimmune.txt','brainAndNervous.txt','cancer.txt','endocrine.txt','env.txt','infectious.txt','inheried.txt','pregnancyAndChildbirth.txt']
for i in files:
    f=open(i,"r")
    for line in f:
        all_symp.append(line.strip("\n"))
print len(all_symp)
print all_symp[57],all_symp[187],all_symp[80]

"""
cursor.execute(""""""select * from diseases"""""")
data = cursor.fetchall ()
# print the rows
fname=raw_input("enter filename: ")
f=open(fname,"w")
data_to_write=""
for row in data:
    symp_flag=[0]*len(all_symp)
    for i in range(len(all_symp)):
        if all_symp[i].lower() in row[4].lower():
            symp_flag[i]=1
    data_to_write="+"+str(row[0])+" "
    for j in range(len(symp_flag)):
        if symp_flag[j]==1:
            data_to_write+=str(j+1)+":1"+" "
    data_to_write+="\n"
    f.write(data_to_write)
f.close()
cursor.close ()
"""

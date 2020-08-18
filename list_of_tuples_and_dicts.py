#!/usr/bin/env python3

"""For list of tuples, determine if first value in each 
   tuple matches a value
"""

l = [(1,2), (3,4), (5,6)]

for (m,n) in l:
    if m == 1:
        print("yes")
    else:
        print("not now")

"""For list of dictionaries, determine if key (first value) in dictionary
   matches a value. 
   If yes then increment count (the value)
   IF no, then add to list with a value of 1
"""   
d = [{"hello": 3}, {"there":2}, {"handsome":1}]
e = ["hello", "hello", "mellow"]

"""
for j in e:
    if  j in d:
        d[{j}] = d[{j}] + 1
    else:
        d[{j}] = 1
"""


print(d)

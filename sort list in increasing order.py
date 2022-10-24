def sort_tuple(tup):
    x=len(tup)
    for i in range(0,x):
        for j in range (0 , x-i-1):
            if (tup[j][-1] > tup[j+1][-1]):
                temp=tup[j]
                tup[j]=tup[j+1]
                tup[j+1]=temp
    return tup
tup=[(2,5),(1,2),(4,4),(2,3),(2,1)]
print(tup)
print(sort_tuple(tup))


#output: input tuple :[(2, 5), (1, 2), (4, 4), (2, 3), (2, 1)]
         output tuple in increasing order:[(2, 1), (1, 2), (2, 3), (4, 4), (2, 5)]

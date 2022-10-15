num=50
a=0
b=1
sum=0
if num<=0:
    print("invalid input ")
else:
    for i in range(0,num):
         print(sum,end=" ")
         a=b
         b=sum
         sum=a+b
   
numbers = (1, 2, 3, 4, 5, 6, 7, 8, 9) 
odd= 0
even=0 
for i in numbers:
    if i%2==0:
        even+=1
    else:
        odd+=1
print("the total even numbers in the string ",even)
print("the total odd numbers in the string",odd)

#expected output:
the total even numbers in the string  4
the total odd numbers in the string 5

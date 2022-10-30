x=input("Enter the string:- ")
def up_low(x):
  u=0
  l=0
  for i in x:
      if i>='a' and i<='z':
       l+=1

      if i >='A' and i<='Z':
       u+=1

  print("No. of lowerCase letter in the String",l)
  print("No. of upperCase letter in the String",u)
up_low(x)
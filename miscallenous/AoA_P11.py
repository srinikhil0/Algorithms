import math

def sec(n):
    print('This is lg n:', math.log(n))
    print('This is sqrt(n):', (n**0.5))
    print('This is n:', n)
    print('This is n lg n:', n*(math.log(n)))
    print('This is n^2:', n**2)
    print('This is n^3', n**3)
    print('This is 2^n', 2**n)
    fact = 1
    for i in range(1, n+1):
        fact = fact*i
    print('This is n!', fact)



sec(1)
sec(60)
sec(60*60)
sec(24*60*60)
sec(30*24*60*60)
sec(12*30*24*60*60)
sec(100*12*30*24*60*60)

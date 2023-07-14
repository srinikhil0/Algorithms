import itertools

for n in itertools.count(start=0):
    x = 100*(n**2)
    y = 2**n
    n=n+1
    if x > y:
        print('The n value is:', format(n))
        break

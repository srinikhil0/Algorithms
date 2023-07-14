import itertools
import math

for n in itertools.count(start=1):
    x = 8*(n**2)
    y = 64*(n*(math.log(n)))
    n=n+1
    if x>y:
        print('The value of n is:', format(n))
        break

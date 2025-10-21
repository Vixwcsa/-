from math import sin, cos

print('  x        sin(x)     cos(x)')
print('----------------------------')
x = 0
while x <= 1:
    x += 0.1
    print(f'{x:6.4f}     {sin(x):6.4f}     {cos(x):6.4f}')

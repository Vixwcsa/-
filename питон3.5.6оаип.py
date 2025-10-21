from random import randint

a = [randint(-10, 10) for _ in range(20)]
print(a)

r = []
for i, x in enumerate(a, 1):
    r.append(x)
    if x < 0: r.append(i)

print(r)

from random import randint

a = [randint(1, 10) for _ in range(20)]
print(a)

n = max(a, key=a.count)
print(f"Число {n} встречается {a.count(n)} раз")

from random import randint

a = [randint(-22, 93) for _ in range(20)]
print("Массив:", a)

k= 0
for i in range(0, 20, 2): 
    if a[i] % 2 == 0:
        k += 1
print("Четные на нечетных местах:", k)

b = 1
for c in a:
    if c % 2 != 0:
        b *= c
print("Произведение нечетных:", b)

n = int(input("Введите начало промежутка: "))
m = int(input("Введите конец промежутка: "))
s = 0
for c in a:
    if n <= c <= m:
        s += c
print("Сумма в промежутке:", s)

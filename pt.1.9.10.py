import random
x = int(input('Введите размер списка 1: '))
lst = []
for i in range(x):
    lst.append(random.randint(-10, 10))

y = int(input('Введите размер списка 2: '))
tpm = []
for i in range(y):
    tpm.append(random.randint(-10, 10)) 

print("Массив 1:", lst)
print("Массив 2:", tpm)

sum1 = 0
sum2 = 0
for i in lst:
    if i > 0:
        sum1 += i
for i in tpm:
    if i > 0:
        sum2 += i

if sum1 > sum2:
    tpm = [x * 10 for x in tpm]
    print("Умножили второй массив")
elif sum1 < sum2:
    lst = [x * 10 for x in lst]
    print("Умножили первый массив")
else:
    print('Суммы равны')

print("Массив 1:", lst)
print("Массив 2:", tpm)

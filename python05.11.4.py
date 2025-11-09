n = int(input("Введите количество чисел: "))
P = 1
f = False
for i in range(n):
    a = int(input(f"Введите число {i+1}: "))
    if a > 0:  
        s = 0
        for x in range(1, a // 2 + 1):
            if a % x == 0:
                s += x
        if s == a:
            P *= a
            f = True
            print(f"Найдено совершенное число: {a}")
if not f:
    print("Нет совершенных чисел")
else:
    print(f"Произведение совершенных чисел: {P}")

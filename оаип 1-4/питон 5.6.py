print('Введите радиус дачи R1, радиус одного НЛО R2, радиус второго НЛО R3')
R1=int(input())
R2=int(input())
R3=int(input())
if R2 + R3 <= R1:
    print('True')
else:
    print('False')

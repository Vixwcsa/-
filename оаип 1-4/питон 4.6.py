print('Введите размер таблицы m,n и клетки с координатами x,y')
x=int(input())
y=int(input())
m=int(input())
n=int(input())
if x > 1:
    print(f'({x-1};{y})')
if x < m:
    print(f'({x+1};{y})')
if y > 1:
    print(f'({x};{y-1})')
if y < n:
    print(f'({x};{y+1})')

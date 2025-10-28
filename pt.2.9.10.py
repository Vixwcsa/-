import random
arr = [[random.randint(1, 50) for _ in range(8)] for _ in range(8)]
print("Двумерный массив:")
for i in arr:
    print(i)
result = []
for i in arr:
    max_val = max(i)
    if i.count(max_val) == 1:
        result.append(1)
    else:
        result.append(-1)

print("\nРезультат:")
print(result)

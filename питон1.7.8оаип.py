s = input("Введите строку: ")

length = len(s)

if length > 6:
    print(f"Первые три символа: {s[:3]}")
    print(f"Последние три символа: {s[-3:]}")
else:
    result = s[0] * length
    print(f"Первый символ {length} раз: {result}")

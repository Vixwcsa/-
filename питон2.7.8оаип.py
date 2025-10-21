s = input("Введите строку: ")

if s.startswith('abc'):
    s = 'www' + s[3:]
    print(f"Результат: {s}")
else:
    s = s + 'zzz'
    print(f"Результат: {s}")

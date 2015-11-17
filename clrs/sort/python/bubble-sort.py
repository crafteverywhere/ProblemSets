# bubble-sort

# input
input = [110, 22, 14, 34, 335, 1, 9, 10]

size = len(input)

if size == 1:
    print(input)
else:
    for i in range(size):
        for j in range(size - i - 1):
            if input[j] > input[j + 1]:
                temp = input[j]
                input[j] = input[j + 1]
                input[j + 1] = temp
    print(input)

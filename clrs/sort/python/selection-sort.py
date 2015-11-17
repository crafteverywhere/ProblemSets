# selection-sort
import sys

# input
input = [110, 22, 14, 34, 335, 1, 9, 10]

size = len(input)
minid = 0

if size == 1:
    print(input)
else:
    for num in range(size):
        temp = input[num]
        minest = sys.maxsize
        for i in range(num, size):
            if minest > input[i]:
                minid = i
                minest = input[i]
        input[num] = minest
        input[minid] = temp
    print(input)

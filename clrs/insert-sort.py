# insert-sort

# input
input = [31, 41, 59, 26, 41, 58]

size = len(input)

if size == 1:
    print(input)
else:
    for num in range(1, size):
        be_inserted = input[num]
        i = num - 1
        while i >= 0 and input[i] > be_inserted:
            input[i + 1] = input[i]
            i = i - 1
        input[i + 1] = be_inserted
    print(input)

#!/usr/bin/env python
# encoding: utf-8

def shellsort(arr):

    size = len(arr)
    gap = int(size/2)

    while gap>0:
        for i in range(gap, size):
            j = i - gap
            while j>=0 and arr[j]>arr[j+gap]:
                (arr[j], arr[j+gap]) = (arr[j+gap], arr[j])
                j -= gap
        gap = int(gap/2)
    for i in range(size):
        print(arr[i])

arr = [12, 45, 11, 6, 123, 43, 55, 87]

shellsort(arr)

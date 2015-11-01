class Solution:
    # @return a tuple, (index1, index2)
    def twoSum(self, num, target):
        map = dict()
        size = len(num)
        for x in range(size):
            map[num[x]] = x
        for x in range(size):
            idx1 = x
            idx2 = map.get(target - num[x])
            if idx2:
                return idx1 + 1, idx2 + 1

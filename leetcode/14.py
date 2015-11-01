class Solution(object):

    def longestCommonPrefix(self, strs):
        """
        :type strs: List[str]
        :rtype: str
        """
        size = len(strs)

        if size == 0:
            return ""

        _size = min(map(len, strs))

        def seek_same(a, b):
            b = b[:len(a)]
            if a == b:
                return a
            else:
                a = a[:-1]
                b = b[:-1]
                return seek_same(a, b)

        return reduce(seek_same, map((lambda x: x[0:_size]), strs))

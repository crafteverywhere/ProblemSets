class Solution(object):

    def convert(self, s, numRows):
        """
        :type s: str
        :type numRows: int
        :rtype: str
        """
        if numRows == 1:
            return s

        size = len(s)
        rows = [''] * numRows
        num = 2 * numRows - 2

        for i in range(size):
            pos = i % num
            if pos < numRows:
                rows[pos] += s[i]
            else:
                rows[num - pos] += s[i]

        return ''.join(rows)

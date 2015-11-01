class Solution(object):

    def romanToInt(self, s):
        """
        :type s: str
        :rtype: int
        """
        output = 0
        size = len(s)
        IVXLCDM = {
            "I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000}
        scale = 1000
        lastc = 0

        for i in range(size):
            c = s[i]
            value = IVXLCDM[c]
            output += value
            if value <= scale:
                scale = value
            else:
                output -= 2 * IVXLCDM[lastc]
            lastc = c

        return output

class Solution(object):
    def reverse(self, x):
        """
        :type x: int
        :rtype: int
        """
        
        if x > 0:
            sign = 1
            s = str(x)
        else:
            sign = -1
            s = str(-x)

        s = s[::-1]
        
        result = int(s)*sign
        
        if result > 2147483647:
            return 0
        elif result < -2147483648:
            return 0
        else:
            return result 
            
# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution(object):
    def addTwoNumbers(self, l1, l2):
        """
        :type l1: ListNode
        :type l2: ListNode
        :rtype: ListNode
        """
        
        current = ListNode(0)
        l3 = current
        carry = 0
        
        while l1 or l2 or carry:
            if l1:
                current.val += l1.val
                l1 = l1.next
            if l2:
                current.val += l2.val
                l2 = l2.next
            if carry:
                current.val += carry
                carry = 0
            if current.val >= 10:
                current.val -= 10
                carry = 1
            if l1 or l2 or carry:
                current.next = ListNode(0)
                current = current.next
            
        return l3

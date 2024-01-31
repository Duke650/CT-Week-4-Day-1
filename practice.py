# ------- Inverter -------
# DESCRIPTION:
# Given a set of numbers, return the additive inverse of each. Each positive becomes negatives, and the negatives become positives.
# You can assume that all values are integers. Do not mutate the input array/list.
# EXAMPLES
# invert([1,2,3,4,5]) == [-1,-2,-3,-4,-5]
# invert([1,-2,3,-4,5]) == [-1,2,-3,4,-5]
# invert([]) == []

def invert(nums):
    return [-num for num in nums]

print(invert([1,2,3,4,5])) # [-1,-2,-3,-4,-5]
print(invert([1,-2,3,-4,5])) # [-1,2,-3,4,-5]
class Solution:
    def replaceElements(self, arr: List[int]) -> List[int]:
        greatest_right = -1
        for r in range(len(arr) -1, -1, -1):
            current_value = arr[r]
            arr[r] = greatest_right
            greatest_right = max(current_value, greatest_right)
        return arr
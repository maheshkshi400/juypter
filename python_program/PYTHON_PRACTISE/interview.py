l = [10,25,35,15,40]

# write a ython program having 2  pairs having sum is 50

def find_pairs_with_sum(arr, target_sum):
  """Finds pairs of elements in the given list that add up to the target sum.

  Args:
    arr: The list of numbers.
    target_sum: The target sum.

  Returns:
    A list of tuples, where each tuple represents a pair of numbers that add up to the target sum.
  """

  pairs = []
  seen = set()

  for num in arr:
    complement = target_sum - num
    if complement in seen:
      pairs.append((num, complement))
    seen.add(num)

  return pairs

l = [10, 25, 35, 15, 40]
target_sum = 50
result = find_pairs_with_sum(l, target_sum)

if result:
  print("Pairs with sum 50:")
  for pair in result:
    print(pair)
else:
  print("No pairs found with sum 50.")
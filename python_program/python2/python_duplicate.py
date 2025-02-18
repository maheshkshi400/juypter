# function to get unique values
def unique(list1):

	# initialize a null list
	unique_list = []

	# traverse for all elements
	for x in list1:
		# check if exists in unique_list or not
		if x not in unique_list:
			unique_list.append(x)
	# print list
	for x in unique_list:
		print(x,end=',')


# driver code
list1 = [10, 20, 10, 30, 40, 40]
print("the unique values from 1st list is")
unique(list1)


list2 = [1, 2, 1, 1, 3, 4, 3, 3, 5]
print("\nthe unique values from 2nd list is")
unique(list2)





from functools import reduce

def unique(list1):

	# Print directly by using * symbol
	ans = reduce(lambda re, x: re+[x] if x not in re else re, list1, [])
	print(ans)


# driver code
list1 = [10, 20, 10, 30, 40, 40]
print("the unique values from 1st list is")
unique(list1)


list2 = [1, 2, 1, 1, 3, 4, 3, 3, 5]
print("\nthe unique values from 2nd list is")
unique(list2)

from  great_expectation 
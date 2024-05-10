def remove_duplicates(lst):
    return list(set(lst))
input_list = [1,3,4,4,7,8,4,9,6,5,6]
unique_list = remove_duplicates(input_list)
print(unique_list)

# Method 2

input_list = list(set(input_list))
print(input_list)



people = { 'Alice':30,'bob': 25,'Charlie':35,'Christ': 46}
age_threshold = 30
name_above_threshold = [name for name,age in people.items()
                        if age > age_threshold]

print(name_above_threshold)



import csv
file_path = r'C:\Users\User\juypter\files\anagrams.csv'
with open(file_path,'r') as file :
    reader =csv.reader(file)
    for row in reader:
        print(row)




def is_numeric_string(str):
    return str.isnumeric()
input_string = '12345'
is_numeric = is_numeric_string(input_string)
print(is_numeric)



from datetime import datetime
def transform_date(date_str,from_format,to_format):
    date_obj = datetime.strptime(date_str,from_format)
    return date_obj.strftime(to_format)

input_date = '2023-08-14'
transform_date = transform_date(input_date,'%Y-%m-%d','%d-%m-%Y')
print(transform_date)


from datetime import datetime
date_str1 = '2023-08-14'
date_str2 = '2023-08-17'

date1 = datetime.strptime(date_str1,'%Y-%m-%d')
date2 = datetime.strptime(date_str2,'%Y-%m-%d')

date_difference = date2 - date1
days_difference = date_difference.days

print("The difference between two dates : ",days_difference)




import re
def is_valid_email(email):
    patteren = r'^[\W\.-]+@[\W\.-]+\.\W+$'

    return re.match(patteren,email) is not None

email_address = 'alice@example.com'
is_valid = is_valid_email(email_address)
print(is_valid)








import pandas as pd
file_path = r'C:\Users\User\juypter\files\anagrams.csv'
data = pd.read_csv(file_path)
outliers = data[(data['num1'] <= 6)| (data['num2'] >=7)]
if outliers.empty:
    print("No outliers found.num1 and num2 data looks good !")
else:
    print("outliers found : ")
    print(outliers)






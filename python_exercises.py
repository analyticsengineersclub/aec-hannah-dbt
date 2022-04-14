# AEC Python Week 1 Exercises (Week 8)

#1. Write a loop that uses while instead of the built-in looping structure

max_guests = 10
current_guests = 0

while current_guests <= max_guests:
	current_guests += 1  
	print('Welcome!')

else:
	print('Max Capacity')

#2. Write a loop that loops over the keys in a dictoinary and prints the values 
favorite_fruit = {'Hannah' : 'apples', 'Jake' : 'bananas'}	

for person in favorite_fruit:
	print(person, ':', favorite_fruit[person])


#3. write the functions is_odd and is_even that are shown in the lecture

def is_odd(x):
	if x % 2 != 0:
		return True

def is_even(x):
	if x % 2 == 0:
		return True

for x in range(0,10):
	if is_even(x):
		print("It's even!")
	elif is_odd(x):
		print("It's odd!")	
	else:
		print("It's neither even nor odd!")		

#4. Loop over my_first_list and square the value if the value is a number, and print the calories of the fruit if it's a fruit
my_first_list = ['apple', 1, 'banana', 2]
my_fruit_list = ['apple', 'banana']
cal_lookup = {'apple' : 95, 'banana' : 105, 'orange' : 45}

for i in my_first_list:
	if type(i) == int:
		print(i**2)
	elif i in my_fruit_list:
		print(cal_lookup[i])


#5. Write a function that: Takes a dictionary as an argument, loops over the keys in the dict, 
	## prints the square of the value in the value, (hint: use cal_lookup for testing)	
cal_lookup = {'apple' : 95, 'banana' : 105, 'orange' : 45}

def square_calories(cal_lookup):
	for fruit in cal_lookup:
		print(cal_lookup[fruit] ** 2)

square_calories(cal_lookup)		


# when to use a while vs if / elif?


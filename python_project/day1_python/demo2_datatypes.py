
# list - mutable
colors = ["red", "green", "yellow", "orange", "black"]
print(type(colors))

print(len(colors))

print(colors[0])
print(colors[1])
print(colors[2])
print(colors[3])

colors.append("black")
print(colors)

# remove record red from the list
colors.remove("red")

print(colors)

# insert blue at index 1
colors.insert(1, "blue")

print(colors)

count = colors.count("black")
print(count)

# immutable
signal_color = ("red", "green", "yellow")

print(type(signal_color))

print(signal_color[0])

signal_color = ("red", "green", "yellow", "orange")

my_details = {
    "name": "bala",
    "mobile": 89898989,
    "role": "Trainer",
    "course": ["selenium", "appium", "java", "C#"]
}

print(my_details["name"])
print(my_details["mobile"])
print(my_details["course"][2])

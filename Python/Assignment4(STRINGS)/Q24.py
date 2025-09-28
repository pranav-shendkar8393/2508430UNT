user_input = input("Enter a String: ")
charCount = {}
leastused = []
for char in user_input:
    charCount.update({char:user_input.count(char)})

avg = (max(charCount.values()) + min(charCount.values())) // 2

for key, value in charCount.items():
    if value < avg:
        leastused.append(key)


print(leastused)
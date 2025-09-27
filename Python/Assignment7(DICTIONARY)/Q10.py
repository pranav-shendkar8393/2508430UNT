dict1 = {"Arham":"Blue", "Monika":"Red", "Lisa":"Yellow", "Vinod":"Purple", "Jenny":"Pink"}
print(dict1)

print("Count:", len(dict1))
dict1.update({"Lisa":"Pink"})
print(dict1)
dict1.pop("Jenny")
print(dict1)
dict1 = dict(sorted(dict1.items()))
print(dict1)
tuple1 = (1, 2, 3, 4)
tuple2 = (5, 6, 7, 8)

print("Tuple1:", tuple1)
print("Tuple2:", tuple2)

tuple_combo = tuple2 + tuple1
print("Combo tuple: ", tuple_combo)

tuple_combo2 = sorted(tuple_combo)
print(f"Sorted tuple:", tuple_combo2)

print("Third of combo2:", tuple_combo2[2])
print("last Third of combo2:", tuple_combo2[-3:])
print("Length of Combo2:", len(tuple_combo2))



# Write a Python function that takes two three-dimensional numeric data sets and adds them componentwise. 

def add3d(arr1, arr2):
    depth = len(arr1) # ==> no. of layers
    rows = len(arr1[0]) # ==> no. of rows in layer 1
    cols = len(arr1[0][0]) # cols in a row

    result = []

    for i in range(depth):
        # traverse all the layers
        depth = []
        for j in range(rows):
            # traverse rows
            row = []
            for k in range(cols):
                # traverse every col
                row.append(arr1[i][j][k] + arr2[i][j][k])
            depth.append(row)
        result.append(depth)

    return result

arr1 = [
    [[13, 2], [53, 41]],
    [[50, 60], [77, 81]]
]

arr2 = [
    [[9, 8], [7, 6]],
    [[5, 4], [3, 2]]
]

result = add3d(arr1, arr2)

print("answer:")
for depth in result:
    for row in depth:
        print(row, end=", ")
    print()



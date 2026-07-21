def bubble_sort(arr):
    n = len(arr)

    for i in range(n):
        swapped = False

        for j in range(0, n - i - 1):
            
            if arr[j] > arr[j + 1]:
                temp = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = temp
                swapped = True

        if not swapped:
            break

n = int(input("Enter no. of students: "))

students = []

for student in range(n):
        marks = list(map(int, input(f"Enter marks of Student {student+1}: ").split()))
        print(marks)
    
        students.append(marks)

print(students)

averages = [sum(el)/len(el) for el in students]
print("Average marks of students: ", averages)

bubble_sort(averages)
print("Ascending sorted averages using bubble sort: ", averages)
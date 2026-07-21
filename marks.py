def calc():
    while True:
        marks = int(input("Enter marks: "))

        if marks < 0 or marks > 100:
            print("marks must be between 0 to 100")
            continue

        grades = {
            10: "A",
            9: "A",
            8: "B",
            7: "C",
            6: "D",
            5: "E",
        }
        print("Grade:", grades.get(marks // 10, "Fail"))
        break

calc()
def factorial(n):
    if(n<2):
        return n
    else:
        return n * factorial(n-1)

n = int(input("Enter a number: "))
fact = factorial(n)
print("Factorial of the number ", n, " is: ", fact)

def binary_search(data, target, low, high):
    if low>high:
        return False
    
    else:
        mid = low + (high-low)/2
        if (target==data[mid]):
            return True
        
        elif target < data[mid]:
            return binary_search(data, target, low, mid-1)
        
        else:
            return binary_search(data, target, mid+1, high)
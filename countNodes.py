class node:
    def __init__( self, data):
        self.data = data
        self.next = None


def count_nodes(head):
    count = 0
    if head == None:
        return 0
    
    current = head

    while True:
        count+=1
        current = current.next
        if current==head:
            break

    return count



def print_star(n):
    for i in range(1, n + 1):
        for j in range(n - i):
            print(" ", end=" ")

        for k in range(2 * i - 1):
            print("*", end=" ")
        
        print()

print_star(3)
class BST:
    def __init__(self, key):
        self.val = key
        self.left=None
        self.right = None

def insert(root, key):
    if root is None:
        return BST(key)
        
    if key<root.val:
        root.left = insert(root.left, key)
    else:
        root.right = insert(root.right, key)

    return root


def search(root, key):
    if root is None:
        return False
    if root.val==key:
        return True
        
    if key<root.val:
        return search(root.left, key)
        
    return search(root.right, key)
    

bstree = None
nums = [50, 30, 20, 70, 60,80,45,75,65,25]

for num in nums:
    bstree = insert(bstree, num)
    


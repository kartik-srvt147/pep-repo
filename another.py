class LinkedList:

    class _node:
        __slots__ = '_elements', 'next'

        def __init__(self, element, next):
            self._elements = element
            self.next = next

        def __init__(self):
            self._head = None
            self.size = 0

        def _len(self):
            return self._size
        
        def is_empty(self):
            return self._size == 0
        
        def push(self, e):
            self._head = self._node(e, self._head)
            self._size += 1

        def top(self):
            if self.is_empty():
                raise Exception("Stack is empty")
            return self._head.elements

        def pop(self):
            if self.is_empty():
                raise Exception("Stack is empty")
            answer = self._head.elements
            self._head = self._head._next
            self._size -= 1

            return answer
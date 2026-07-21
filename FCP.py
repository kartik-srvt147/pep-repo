def toppings(*menu):
    # print(menu)
    print('\nPrint icecream with toppings: ')
    for i in menu:
        print(i)

toppings('chocolate')
toppings('chocolate', 'vanilla')
toppings('chocolate', 'vanilla', 'fruit&nuts')


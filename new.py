def simulate():
    print("Internal Fragmentation")
    size = 4096
    request = 3000
    print("size available: ", size)
    print("size requested: ", request)


    page_needed = 1
    total_allocated = page_needed*size
    wasted_space = total_allocated - request

    print("Os allocates: ", total_allocated)
    print("wasted: ", wasted_space)

simulate()
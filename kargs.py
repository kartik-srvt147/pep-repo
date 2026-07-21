def build_profile(first, last, **user_info):
    user_info['first'] = first
    user_info['last'] = last

    return user_info

user = build_profile('john', 'doe', age=24, height=6, country="norway")
print(user) 
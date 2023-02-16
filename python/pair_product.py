def pair_product(numbers, target):
    previous = {}
    for i in range(len(numbers)):
        complement = target / numbers[i]
        if complement in previous:
            return (i, previous[complement])
        else:
            previous[numbers[i]] = i 
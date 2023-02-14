def compress(s):
    s += '0'
    result = []
    i = 0
    j = 0
    while j < len(s):
        if s[j] != s[i]:
            count = j - i
            if count == 1:
                result.append(s[i])
            else:
              result.append(str(count) + s[i])
            i = j
        else:
            j += 1

    return ''.join(result)
            
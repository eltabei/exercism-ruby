def sieve_of_eratosthenes(limit):
    numbers = range(2, limit)
    for p in numbers:
        n = 2 * p
        while n < limit:
            if n in numbers:
                numbers.remove(n)
            n += p
    return numbers

def nth_prime(n):
    ''' returns nth prime '''
    i = 0
    for p in sieve_of_eratosthenes(10001):
        i += 1
        if i == n:
            return p

#print nth_prime(4)

def nth_prime2(n):
    prime_list = []
    current = 2
    count = 0
    while(count < n):
        is_prime = True
        for prime in prime_list:
            if current % prime == 0:
                is_prime = False
                break
        if is_prime:
            prime_list.append(current)
            count += 1
        current += 1
    return current - 1

print nth_prime(10001)

#Jordan
def is_prime?(number)
  if number <= 1
    # only numbers > 1 can be prime.
    return false
  end

  idx = 2
  while idx < number
    if (number % idx) == 0
      return false
    end

    idx += 1
  end

  return true
end

def nth_prime(n)
  prime_num = 0

  i = 2
  while true
    if is_prime?(i)
      prime_num += 1
      if prime_num == n
        return i
      end
    end

    i += 1
  end
end
#===========
# Joe & Mark
def nth_prime(n)
  i = 0
  num = 1
  while i < n
    if is_prime?(num)
      i += 1
    end
    num += 1
  end
  return num - 1
end
#===========

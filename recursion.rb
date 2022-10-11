require 'pry-byebug'

# Find the sum of all the multiples of 3 or 5 up to n.
def multiples(n, total = 0)
  return total + 8 if n <= 5

  if n % 3 == 0
    multiples(n - 1, total + n)
  elsif n % 5 == 0
    multiples(n - 1, total + n)
  else
    multiples(n - 1, total)
  end
end

# Checks if a number is a palindrome
def check_palindrome(num)
  snum = num.to_s
  rnum = snum.split('').reverse.join('')
  snum == rnum ? true : false
end

# Finds the largest palindrome that is the product of two three digit numbers
def palindrome 
  pali = []
  999.downto(100) do |i|
    999.downto(100) do |j|
      if check_palindrome(i * j)
        pali << i * j
      end
    end
  end
  pali.max
end

# A method to recursively determine if a number is a palindrome
def pali_rec(num)
  temp = num.to_s.split('')
  return true if temp.length <= 1

  if temp.first == temp[-1]
    temp.shift
    temp.pop
    pali_rec(temp.join(''))
  else
    false
  end
end

# Find the smallest number that is evenly divisible by all of the numbers from 1 to 20
def smallest_num
  num = false
  x = 2520
  while num == false
    for i in 11..20
      if i == 20 && x % i == 0
        num = true
      elsif x % i == 0
        next
      else
        x += 1
        break
      end
    end
  end
  x
end

# Find the square of the sum of the first n natural numbers
def square_of_sum(n, total = 0)
  return total * total if n <= 0

  square_of_sum(n - 1, total + n)
end

# Check whether a number n is prime
def is_prime?(n, i = 2)
  return false if n == 0 || n == 1

  return true if n == i
    
  return false if n % i == 0

  i += 1
  is_prime?(n, i)
end

# Find the largest prime factor of n
def prime_factor(n)
  primes = []
  for i in 2..(n/2)
    if n % i == 0 && is_prime?(i)
      primes << i
    else
      next
    end
  end
  primes.max
end

